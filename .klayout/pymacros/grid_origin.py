# $autorun
import pya

CATEGORY = "__auto_origin_marker__"
LABEL = "origin (0,0)"

# Keep callback references alive
if not hasattr(pya, "_origin_marker_callbacks"):
    pya._origin_marker_callbacks = []

if not hasattr(pya, "_origin_marker_installed"):
    pya._origin_marker_installed = False


def has_origin_marker(view):
    for a in view.each_annotation():
        if a.category == CATEGORY:
            return True
    return False


def add_origin_marker(view):
    if view is None:
        return

    # No layout loaded in this view
    if view.cellviews() == 0:
        return

    # Avoid duplicates
    if has_origin_marker(view):
        return

    a = pya.Annotation()
    a.p1 = pya.DPoint(0.0, 0.0)
    a.p2 = pya.DPoint(0.0, 0.0)

    a.style = pya.Annotation.StyleCrossEnd
    a.fmt = LABEL
    a.fmt_x = ""
    a.fmt_y = ""
    a.category = CATEGORY

    view.insert_annotation(a)


def connect_view(view):
    if view is None:
        return

    def on_file_open():
        add_origin_marker(view)

    view.on_file_open += on_file_open
    pya._origin_marker_callbacks.append(on_file_open)

    add_origin_marker(view)


def install():
    if pya._origin_marker_installed:
        return

    app = pya.Application.instance()
    mw = app.main_window()

    def on_view_created(index):
        view = mw.view(index)
        connect_view(view)

    mw.on_view_created += on_view_created
    pya._origin_marker_callbacks.append(on_view_created)

    # Also handle layouts already open during startup
    for i in range(mw.views()):
        connect_view(mw.view(i))

    pya._origin_marker_installed = True


install()
