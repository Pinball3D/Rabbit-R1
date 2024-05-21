.class public final Landroidx/compose/ui/layout/ScaleFactorKt;
.super Ljava/lang/Object;
.source "ScaleFactor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaleFactor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactorKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,197:1\n130#1:201\n25#2,3:198\n*S KotlinDebug\n*F\n+ 1 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactorKt\n*L\n144#1:201\n31#1:198,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a \u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001a-\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000cH\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\"\u0010\u0015\u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u000c\u0010\u001a\u001a\u00020\u000c*\u00020\u000cH\u0002\u001a+\u0010\u001b\u001a\u00020\u0002*\u00020\u00022\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001dH\u0086\u0008\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a\"\u0010 \u001a\u00020\u0016*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\u0019\u001a\"\u0010 \u001a\u00020\u0016*\u00020\u00022\u0006\u0010\"\u001a\u00020\u0016H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\u0019\"\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\u0082\u0002\u0012\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0005\u0008\u009920\u0001\u00a8\u0006$"
    }
    d2 = {
        "isSpecified",
        "",
        "Landroidx/compose/ui/layout/ScaleFactor;",
        "isSpecified-FK8aYYs$annotations",
        "(J)V",
        "isSpecified-FK8aYYs",
        "(J)Z",
        "isUnspecified",
        "isUnspecified-FK8aYYs$annotations",
        "isUnspecified-FK8aYYs",
        "ScaleFactor",
        "scaleX",
        "",
        "scaleY",
        "(FF)J",
        "lerp",
        "start",
        "stop",
        "fraction",
        "lerp--bDIf60",
        "(JJF)J",
        "div",
        "Landroidx/compose/ui/geometry/Size;",
        "scaleFactor",
        "div-UQTWf7w",
        "(JJ)J",
        "roundToTenths",
        "takeOrElse",
        "block",
        "Lkotlin/Function0;",
        "takeOrElse-oyDd2qo",
        "(JLkotlin/jvm/functions/Function0;)J",
        "times",
        "times-UQTWf7w",
        "size",
        "times-m-w2e94",
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


# direct methods
.method public static final ScaleFactor(FF)J
    .locals 4

    .line 198
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 199
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 31
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$roundToTenths(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->roundToTenths(F)F

    move-result p0

    return p0
.end method

.method public static final div-UQTWf7w(JJ)J
    .locals 2

    .line 174
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final isSpecified-FK8aYYs(J)Z
    .locals 2

    .line 130
    sget-object v0, Landroidx/compose/ui/layout/ScaleFactor;->Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ScaleFactor$Companion;->getUnspecified-_hLwfpc()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isSpecified-FK8aYYs$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final isUnspecified-FK8aYYs(J)Z
    .locals 2

    .line 137
    sget-object v0, Landroidx/compose/ui/layout/ScaleFactor;->Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ScaleFactor$Companion;->getUnspecified-_hLwfpc()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isUnspecified-FK8aYYs$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final lerp--bDIf60(JJF)J
    .locals 2

    .line 194
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    .line 195
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 193
    invoke-static {v0, p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final roundToTenths(F)F
    .locals 3

    const/16 v0, 0xa

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int v1, p0

    int-to-float v2, v1

    sub-float/2addr p0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    int-to-float p0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public static final takeOrElse-oyDd2qo(JLkotlin/jvm/functions/Function0;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/layout/ScaleFactor;",
            ">;)J"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Landroidx/compose/ui/layout/ScaleFactor;->Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ScaleFactor$Companion;->getUnspecified-_hLwfpc()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/ScaleFactor;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/ScaleFactor;->unbox-impl()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final times-UQTWf7w(JJ)J
    .locals 2

    .line 154
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-m-w2e94(JJ)J
    .locals 0

    .line 164
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->times-UQTWf7w(JJ)J

    move-result-wide p0

    return-wide p0
.end method
