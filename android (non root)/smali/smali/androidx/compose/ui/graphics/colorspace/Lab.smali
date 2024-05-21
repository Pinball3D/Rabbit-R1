.class public final Landroidx/compose/ui/graphics/colorspace/Lab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Lab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lab.kt\nandroidx/compose/ui/graphics/colorspace/Lab\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,140:1\n25#2,3:141\n*S KotlinDebug\n*F\n+ 1 Lab.kt\nandroidx/compose/ui/graphics/colorspace/Lab\n*L\n74#1:141,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J%\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J%\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0019J@\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Lab;",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "name",
        "",
        "id",
        "",
        "(Ljava/lang/String;I)V",
        "isWideGamut",
        "",
        "()Z",
        "fromXyz",
        "",
        "v",
        "getMaxValue",
        "",
        "component",
        "getMinValue",
        "toXy",
        "",
        "v0",
        "v1",
        "v2",
        "toXy$ui_graphics_release",
        "toXyz",
        "toZ",
        "toZ$ui_graphics_release",
        "xyzaToColor",
        "Landroidx/compose/ui/graphics/Color;",
        "x",
        "y",
        "z",
        "a",
        "colorSpace",
        "xyzaToColor-JlNiLsg$ui_graphics_release",
        "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J",
        "Companion",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

.field private static final D:F = 0.20689656f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Lab;->Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 30
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 14

    const-string/jumbo p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 115
    aget v0, p1, p0

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v1

    aget v1, v1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    .line 116
    aget v2, p1, v1

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v3

    aget v3, v3, v1

    div-float/2addr v2, v3

    const/4 v3, 0x2

    .line 117
    aget v4, p1, v3

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v5

    aget v5, v5, v3

    div-float/2addr v4, v5

    const v5, 0x3c111aa7

    cmpl-float v6, v0, v5

    const v7, 0x3eaaaaab

    const v8, 0x3e0d3dcb

    const v9, 0x40f92f68

    if-lez v6, :cond_0

    float-to-double v10, v0

    float-to-double v12, v7

    .line 119
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    :goto_0
    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    float-to-double v10, v2

    float-to-double v12, v7

    .line 120
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v2, v10

    goto :goto_1

    :cond_1
    mul-float/2addr v2, v9

    add-float/2addr v2, v8

    :goto_1
    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    float-to-double v4, v4

    float-to-double v6, v7

    .line 121
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_2

    :cond_2
    mul-float/2addr v4, v9

    add-float/2addr v4, v8

    :goto_2
    const/high16 v5, 0x42e80000    # 116.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x41800000    # 16.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v6

    const/high16 v6, 0x43480000    # 200.0f

    sub-float/2addr v2, v4

    mul-float/2addr v2, v6

    const/4 v4, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 127
    invoke-static {v5, v4, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    aput v4, p1, p0

    const/high16 p0, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    .line 128
    invoke-static {v0, p0, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, p1, v1

    .line 129
    invoke-static {v2, p0, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    aput p0, p1, v3

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43000000    # 128.0f

    :goto_0
    return p0
.end method

.method public getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x3d000000    # -128.0f

    :goto_0
    return p0
.end method

.method public isWideGamut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toXy$ui_graphics_release(FFF)J
    .locals 2

    const/4 p0, 0x0

    const/high16 p2, 0x42c80000    # 100.0f

    .line 66
    invoke-static {p1, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    const/high16 p2, -0x3d000000    # -128.0f

    const/high16 p3, 0x43000000    # 128.0f

    .line 67
    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    add-float/2addr p0, p2

    const/high16 p2, 0x42e80000    # 116.0f

    div-float/2addr p0, p2

    const p2, 0x3b03126f    # 0.002f

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    const p2, 0x3e53dcb1

    cmpl-float p3, p1, p2

    const v0, 0x3e0d3dcb

    const v1, 0x3e038027

    if-lez p3, :cond_0

    mul-float p3, p1, p1

    mul-float/2addr p3, p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v0

    mul-float p3, p1, v1

    :goto_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    goto :goto_1

    :cond_1
    sub-float/2addr p0, v0

    mul-float p1, p0, v1

    .line 74
    :goto_1
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 p2, 0x0

    aget p0, p0, p2

    mul-float/2addr p3, p0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 p2, 0x1

    aget p0, p0, p2

    mul-float/2addr p1, p0

    .line 141
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p2, p0

    .line 142
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public toXyz([F)[F
    .locals 9

    const-string/jumbo p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 47
    aget v0, p1, p0

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, p1, p0

    const/4 v0, 0x1

    .line 48
    aget v1, p1, v0

    const/high16 v2, -0x3d000000    # -128.0f

    const/high16 v3, 0x43000000    # 128.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x2

    .line 49
    aget v4, p1, v1

    invoke-static {v4, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 51
    aget v3, p1, p0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 52
    aget v4, p1, v0

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    const v5, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v5

    sub-float v2, v3, v2

    const v5, 0x3e53dcb1

    cmpl-float v6, v4, v5

    const v7, 0x3e0d3dcb

    const v8, 0x3e038027

    if-lez v6, :cond_0

    mul-float v6, v4, v4

    mul-float/2addr v6, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v4, v7

    mul-float v6, v4, v8

    :goto_0
    cmpl-float v4, v3, v5

    if-lez v4, :cond_1

    mul-float v4, v3, v3

    mul-float/2addr v4, v3

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v7

    mul-float v4, v3, v8

    :goto_1
    cmpl-float v3, v2, v5

    if-lez v3, :cond_2

    mul-float v3, v2, v2

    mul-float/2addr v3, v2

    goto :goto_2

    :cond_2
    sub-float/2addr v2, v7

    mul-float v3, v2, v8

    .line 58
    :goto_2
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v2

    aget v2, v2, p0

    mul-float/2addr v6, v2

    aput v6, p1, p0

    .line 59
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    aget p0, p0, v0

    mul-float/2addr v4, p0

    aput v4, p1, v0

    .line 60
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    aget p0, p0, v1

    mul-float/2addr v3, p0

    aput v3, p1, v1

    return-object p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 0

    const/4 p0, 0x0

    const/high16 p2, 0x42c80000    # 100.0f

    .line 78
    invoke-static {p1, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    const/high16 p1, -0x3d000000    # -128.0f

    const/high16 p2, 0x43000000    # 128.0f

    .line 79
    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    add-float/2addr p0, p2

    const/high16 p2, 0x42e80000    # 116.0f

    div-float/2addr p0, p2

    const p2, 0x3ba3d70a    # 0.005f

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    const p1, 0x3e53dcb1

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    goto :goto_0

    :cond_0
    const p1, 0x3e0d3dcb

    sub-float/2addr p0, p1

    const p1, 0x3e038027

    mul-float/2addr p1, p0

    .line 83
    :goto_0
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 p2, 0x2

    aget p0, p0, p2

    mul-float/2addr p1, p0

    return p1
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 8

    const-string p0, "colorSpace"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    div-float/2addr p1, p0

    .line 94
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    div-float/2addr p2, p0

    .line 95
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    div-float/2addr p3, p0

    const p0, 0x3c111aa7

    cmpl-float v0, p1, p0

    const v1, 0x3eaaaaab

    const v2, 0x3e0d3dcb

    const v3, 0x40f92f68

    if-lez v0, :cond_0

    float-to-double v4, p1

    float-to-double v6, v1

    .line 97
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p1, v4

    goto :goto_0

    :cond_0
    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    :goto_0
    cmpl-float v0, p2, p0

    if-lez v0, :cond_1

    float-to-double v4, p2

    float-to-double v6, v1

    .line 98
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p2, v4

    goto :goto_1

    :cond_1
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    :goto_1
    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    float-to-double v2, p3

    float-to-double v0, v1

    .line 99
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_2

    :cond_2
    mul-float/2addr p3, v3

    add-float p0, p3, v2

    :goto_2
    const/high16 p3, 0x42e80000    # 116.0f

    mul-float/2addr p3, p2

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p3, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    const/high16 v0, 0x43480000    # 200.0f

    sub-float/2addr p2, p0

    mul-float/2addr p2, v0

    const/4 p0, 0x0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 106
    invoke-static {p3, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    const/high16 p3, -0x3d000000    # -128.0f

    const/high16 v0, 0x43000000    # 128.0f

    .line 107
    invoke-static {p1, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 108
    invoke-static {p2, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 105
    invoke-static {p0, p1, p2, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
