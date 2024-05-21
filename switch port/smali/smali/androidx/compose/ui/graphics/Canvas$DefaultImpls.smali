.class public final Landroidx/compose/ui/graphics/Canvas$DefaultImpls;
.super Ljava/lang/Object;
.source "Canvas.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V
    .locals 0

    .line 345
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V
    .locals 0

    .line 333
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V

    return-void
.end method

.method public static clipRect-mtrdD-E(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->access$clipRect-mtrdD-E$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;I)V

    return-void
.end method

.method public static synthetic clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V
    .locals 0

    .line 317
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V

    return-void
.end method

.method public static drawArc(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->access$drawArc$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static drawArcRad(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->access$drawArcRad$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic drawImageRect-HPBpro0$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;ILjava/lang/Object;)V
    .locals 0

    .line 547
    invoke-static/range {p0 .. p12}, Landroidx/compose/ui/graphics/Canvas;->drawImageRect-HPBpro0$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;ILjava/lang/Object;)V

    return-void
.end method

.method public static drawOval(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->access$drawOval$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static drawRect(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->access$drawRect$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic scale$default(Landroidx/compose/ui/graphics/Canvas;FFILjava/lang/Object;)V
    .locals 0

    .line 276
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Canvas;->scale$default(Landroidx/compose/ui/graphics/Canvas;FFILjava/lang/Object;)V

    return-void
.end method

.method public static skewRad(Landroidx/compose/ui/graphics/Canvas;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->access$skewRad$jd(Landroidx/compose/ui/graphics/Canvas;FF)V

    return-void
.end method
