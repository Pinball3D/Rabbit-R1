.class public final Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;
.super Ljava/lang/Object;
.source "NestedScrollInteropConnection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedScrollInteropConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedScrollInteropConnection.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,236:1\n76#2:237\n36#3:238\n1097#4,6:239\n*S KotlinDebug\n*F\n+ 1 NestedScrollInteropConnection.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n*L\n233#1:237\n234#1:238\n234#1:239,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0001H\u0000\u001a\u0017\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u001a%\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u000c\u0010\u0014\u001a\u00020\u0001*\u00020\u0001H\u0002\u001a\u000c\u0010\u0015\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\u0019\u0010\u0016\u001a\u00020\u0003*\u00020\u0017H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u000c\u0010\u001a\u001a\u00020\u0001*\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0002\u001a\u00020\u0003*\u00020\u00048BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "ScrollingAxesThreshold",
        "",
        "scrollAxes",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "getScrollAxes-k-4lQ0M",
        "(J)I",
        "composeToViewOffset",
        "offset",
        "rememberNestedScrollInteropConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "hostView",
        "Landroid/view/View;",
        "(Landroid/view/View;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "toOffset",
        "consumed",
        "",
        "available",
        "toOffset-Uv8p0NA",
        "([IJ)J",
        "ceilAwayFromZero",
        "reverseAxis",
        "toViewType",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "toViewType-GyEprt8",
        "(I)I",
        "toViewVelocity",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ScrollingAxesThreshold:F = 0.5f


# direct methods
.method public static final synthetic access$getScrollAxes-k-4lQ0M(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->getScrollAxes-k-4lQ0M(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toOffset-Uv8p0NA([IJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toOffset-Uv8p0NA([IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$toViewType-GyEprt8(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toViewType-GyEprt8(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toViewVelocity(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toViewVelocity(F)F

    move-result p0

    return p0
.end method

.method private static final ceilAwayFromZero(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    float-to-double v0, p0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    return p0
.end method

.method public static final composeToViewOffset(F)I
    .locals 0

    .line 161
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->ceilAwayFromZero(F)F

    move-result p0

    float-to-int p0, p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static final getScrollAxes-k-4lQ0M(J)I
    .locals 2

    .line 204
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public static final rememberNestedScrollInteropConnection(Landroid/view/View;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 2

    const v0, 0x4b1bb784    # 1.020506E7f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberNestedScrollInteropConnection)232@8144L7,233@8180L66:NestedScrollInteropConnection.kt#itgzvw"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 233
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/CompositionLocal;

    const p3, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 237
    invoke-static {p1, p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p0, Landroid/view/View;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    const-string v1, "androidx.compose.ui.platform.rememberNestedScrollInteropConnection (NestedScrollInteropConnection.kt:231)"

    .line 234
    invoke-static {v0, p2, p3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const p2, 0x44faf204

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 238
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    .line 239
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_2

    .line 240
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne p3, p2, :cond_3

    .line 235
    :cond_2
    new-instance p3, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    invoke-direct {p3, p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;-><init>(Landroid/view/View;)V

    .line 242
    invoke-interface {p1, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 234
    check-cast p3, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object p3
.end method

.method private static final reverseAxis(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private static final toOffset-Uv8p0NA([IJ)J
    .locals 3

    .line 174
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 175
    aget v0, p0, v2

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    goto :goto_0

    .line 177
    :cond_0
    aget v0, p0, v2

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 180
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpl-float v1, v2, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 181
    aget p0, p0, v2

    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    goto :goto_1

    .line 183
    :cond_1
    aget p0, p0, v2

    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    .line 186
    :goto_1
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final toViewType-GyEprt8(I)I
    .locals 1

    .line 190
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final toViewVelocity(F)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p0, v0

    return p0
.end method
