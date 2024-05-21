.class public final Landroidx/compose/ui/geometry/MutableRectKt;
.super Ljava/lang/Object;
.source "MutableRect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/geometry/MutableRect;",
        "ui-geometry_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method
