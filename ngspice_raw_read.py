#!/usr/bin/env python3



import sys
import numpy as np
import matplotlib.pyplot as plt


def read_ngspice_binary_raw(filename):
    with open(filename, "rb") as f:
        nvars = None
        npoints = None
        names = []
        types = []
        flags = []

        while True:
            line = f.readline()
            if not line:
                raise RuntimeError("No Binary: section found")

            s = line.decode("latin1").strip()

            if s.lower().startswith("flags:"):
                flags = s.split(":", 1)[1].split()

            elif s.lower().startswith("no. variables:"):
                nvars = int(s.split(":", 1)[1])

            elif s.lower().startswith("no. points:"):
                npoints = int(s.split(":", 1)[1])

            elif s.lower().startswith("variables:"):
                for _ in range(nvars):
                    parts = f.readline().decode("latin1").split()
                    names.append(parts[1])
                    types.append(parts[2])

            elif s.lower().startswith("binary:"):
                break

        is_complex = "complex" in flags

        if is_complex:
            raw = np.fromfile(f, dtype=np.float64, count=npoints * nvars * 2)
            raw = raw.reshape((npoints, nvars, 2))
            data = raw[:, :, 0] + 1j * raw[:, :, 1]
        else:
            raw = np.fromfile(f, dtype=np.float64, count=npoints * nvars)
            data = raw.reshape((npoints, nvars))

        vectors = {name: data[:, i] for i, name in enumerate(names)}

        return names, types, vectors


def main():
    if len(sys.argv) < 2:
        print("Usage:")
        print("  python3 plot_raw_bin.py file.raw")
        print("  python3 plot_raw_bin.py file.raw xvar yvar")
        sys.exit(1)

    filename = sys.argv[1]
    names, types, vectors = read_ngspice_binary_raw(filename)

    print("Available vectors:")
    print(f"  {'names':30s} types")
    print("")
    for n, t in zip(names, types):
        print(f"  {n:30s} {t}")

    if len(sys.argv) == 2:
        return

    xname = sys.argv[2]
    yname = sys.argv[3]

    x = vectors[xname]
    y = vectors[yname]

    if np.iscomplexobj(y):
        y = np.abs(y)

    plt.plot(x, y)
    plt.xlabel(xname)
    plt.ylabel(yname)
    plt.grid(True)
    plt.tight_layout()
    plt.show()


if __name__ == "__main__":
    main()
