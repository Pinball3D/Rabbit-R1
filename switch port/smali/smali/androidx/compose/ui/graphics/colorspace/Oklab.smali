.class public final Landroidx/compose/ui/graphics/colorspace/Oklab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Oklab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOklab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Oklab.kt\nandroidx/compose/ui/graphics/colorspace/Oklab\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,172:1\n25#2,3:173\n*S KotlinDebug\n*F\n+ 1 Oklab.kt\nandroidx/compose/ui/graphics/colorspace/Oklab\n*L\n78#1:173,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J%\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J%\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0019J@\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Oklab;",
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
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

.field private static final InverseM1:[F

.field private static final InverseM2:[F

.field private static final M1:[F

.field private static final M2:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 145
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    move-result-object v2

    .line 146
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v3

    .line 147
    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v4

    .line 144
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 163
    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 169
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    :array_1
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 32
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 5

    const-string/jumbo p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    .line 122
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    const/4 p0, 0x0

    .line 124
    aget v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    aget v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const v3, 0x3eaaaaab

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    aput v0, p1, p0

    const/4 p0, 0x1

    .line 125
    aget v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    aget v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    aput v0, p1, p0

    const/4 p0, 0x2

    .line 126
    aget v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    aget v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    aput v0, p1, p0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 128
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x41000000    # -0.5f

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

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    invoke-static {p1, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    const/high16 p1, -0x41000000    # -0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 64
    invoke-static {p2, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 65
    invoke-static {p3, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sget-object p3, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    .line 67
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 68
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v1

    .line 69
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result p0

    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float p2, v1, v1

    mul-float/2addr p2, v1

    mul-float p3, p0, p0

    mul-float/2addr p3, p0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 75
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 76
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result p0

    .line 173
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 174
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long p0, p1, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public toXyz([F)[F
    .locals 5

    const-string/jumbo p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 49
    aget v0, p1, p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, p1, p0

    const/4 v0, 0x1

    .line 50
    aget v1, p1, v0

    const/high16 v2, -0x41000000    # -0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x2

    .line 51
    aget v4, p1, v1

    invoke-static {v4, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v1

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    .line 53
    invoke-static {v2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 54
    aget v2, p1, p0

    mul-float v3, v2, v2

    mul-float/2addr v3, v2

    aput v3, p1, p0

    .line 55
    aget p0, p1, v0

    mul-float v2, p0, p0

    mul-float/2addr v2, p0

    aput v2, p1, v0

    .line 56
    aget p0, p1, v1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    aput v0, p1, v1

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 57
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    return-object p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 2

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-static {p1, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    const/high16 p1, -0x41000000    # -0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 83
    invoke-static {p2, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 84
    invoke-static {p3, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sget-object p3, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    .line 86
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 87
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v1

    .line 88
    invoke-static {p3, p0, p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result p0

    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float p2, v1, v1

    mul-float/2addr p2, v1

    mul-float p3, p0, p0

    mul-float/2addr p3, p0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 94
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result p0

    return p0
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 4

    const-string p0, "colorSpace"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    .line 106
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 107
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v1

    .line 108
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result p0

    .line 110
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    const v0, 0x3eaaaaab

    float-to-double v2, v0

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p1, p2

    .line 111
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    mul-float/2addr p2, p3

    .line 112
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float/2addr p3, p0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 114
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 115
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v1

    .line 116
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result p0

    .line 118
    invoke-static {v0, v1, p0, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
