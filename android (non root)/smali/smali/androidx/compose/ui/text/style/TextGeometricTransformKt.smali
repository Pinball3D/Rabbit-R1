.class public final Landroidx/compose/ui/text/style/TextGeometricTransformKt;
.super Ljava/lang/Object;
.source "TextGeometricTransform.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "lerp",
        "Landroidx/compose/ui/text/style/TextGeometricTransform;",
        "start",
        "stop",
        "fraction",
        "",
        "ui-text_release"
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
.method public static final lerp(Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/style/TextGeometricTransform;F)Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 3

    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 74
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    move-result v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 73
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    return-object v0
.end method
