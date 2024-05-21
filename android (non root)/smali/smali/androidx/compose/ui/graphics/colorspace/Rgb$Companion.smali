.class public final Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
.super Ljava/lang/Object;
.source "Rgb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0015\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0008H\u0002J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0008H\u0002J(\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J@\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$H\u0002J \u0010%\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0002J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;",
        "",
        "()V",
        "DoubleIdentity",
        "Landroidx/compose/ui/graphics/colorspace/DoubleFunction;",
        "area",
        "",
        "primaries",
        "",
        "compare",
        "",
        "point",
        "",
        "a",
        "b",
        "computePrimaries",
        "toXYZ",
        "computePrimaries$ui_graphics_release",
        "computeWhitePoint",
        "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
        "computeXYZMatrix",
        "whitePoint",
        "contains",
        "p1",
        "p2",
        "cross",
        "ax",
        "ay",
        "bx",
        "by",
        "isSrgb",
        "OETF",
        "EOTF",
        "min",
        "max",
        "id",
        "",
        "isWideGamut",
        "xyPrimaries",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    .line 993
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computeWhitePoint([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$computeXYZMatrix(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 0

    .line 993
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computeXYZMatrix([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSrgb(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z
    .locals 0

    .line 993
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->isSrgb([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isWideGamut(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FFF)Z
    .locals 0

    .line 993
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->isWideGamut([FFF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$xyPrimaries(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)[F
    .locals 0

    .line 993
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->xyPrimaries([F)[F

    move-result-object p0

    return-object p0
.end method

.method private final area([F)F
    .locals 6

    const/4 p0, 0x0

    .line 1109
    aget p0, p1, p0

    const/4 v0, 0x1

    .line 1110
    aget v0, p1, v0

    const/4 v1, 0x2

    .line 1111
    aget v1, p1, v1

    const/4 v2, 0x3

    .line 1112
    aget v2, p1, v2

    const/4 v3, 0x4

    .line 1113
    aget v3, p1, v3

    const/4 v4, 0x5

    .line 1114
    aget p1, p1, v4

    mul-float v4, p0, v2

    mul-float v5, v0, v3

    add-float/2addr v4, v5

    mul-float v5, v1, p1

    add-float/2addr v4, v5

    mul-float/2addr v2, v3

    sub-float/2addr v4, v2

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    mul-float/2addr p0, p1

    sub-float/2addr v4, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v4, p0

    const/4 p0, 0x0

    cmpg-float p0, v4, p0

    if-gez p0, :cond_0

    neg-float v4, v4

    :cond_0
    return v4
.end method

.method private final compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z
    .locals 2

    .line 1060
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v0

    .line 1061
    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    .line 1062
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final computeWhitePoint([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 3

    const/4 p0, 0x3

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 1298
    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p0

    const/4 p1, 0x0

    .line 1302
    aget v0, p0, p1

    const/4 v1, 0x1

    aget v2, p0, v1

    add-float/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p0, v2

    add-float/2addr v0, v2

    .line 1303
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    aget p1, p0, p1

    div-float/2addr p1, v0

    aget p0, p0, v1

    div-float/2addr p0, v0

    invoke-direct {v2, p1, p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final computeXYZMatrix([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 21

    const/4 v0, 0x0

    .line 1350
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 1351
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 1352
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 1353
    aget v7, p1, v6

    const/4 v8, 0x4

    .line 1354
    aget v9, p1, v8

    const/4 v10, 0x5

    .line 1355
    aget v11, p1, v10

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getX()F

    move-result v12

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getY()F

    move-result v13

    int-to-float v14, v2

    sub-float v15, v14, v1

    div-float/2addr v15, v3

    sub-float v16, v14, v5

    div-float v16, v16, v7

    sub-float v17, v14, v9

    div-float v17, v17, v11

    sub-float/2addr v14, v12

    div-float/2addr v14, v13

    div-float v18, v1, v3

    div-float v19, v5, v7

    div-float v20, v9, v11

    div-float/2addr v12, v13

    sub-float/2addr v14, v15

    sub-float v19, v19, v18

    mul-float v14, v14, v19

    sub-float v12, v12, v18

    sub-float v16, v16, v15

    mul-float v13, v12, v16

    sub-float/2addr v14, v13

    sub-float v17, v17, v15

    mul-float v17, v17, v19

    sub-float v20, v20, v18

    mul-float v16, v16, v20

    sub-float v17, v17, v16

    div-float v14, v14, v17

    mul-float v20, v20, v14

    sub-float v12, v12, v20

    div-float v12, v12, v19

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v15, v13, v12

    sub-float/2addr v15, v14

    div-float v16, v15, v3

    div-float v17, v12, v7

    div-float v18, v14, v11

    const/16 v10, 0x9

    new-array v10, v10, [F

    mul-float v19, v16, v1

    aput v19, v10, v0

    aput v15, v10, v2

    sub-float v0, v13, v1

    sub-float/2addr v0, v3

    mul-float v16, v16, v0

    aput v16, v10, v4

    mul-float v0, v17, v5

    aput v0, v10, v6

    aput v12, v10, v8

    sub-float v0, v13, v5

    sub-float/2addr v0, v7

    mul-float v17, v17, v0

    const/4 v0, 0x5

    aput v17, v10, v0

    const/4 v0, 0x6

    mul-float v1, v18, v9

    aput v1, v10, v0

    const/4 v0, 0x7

    aput v14, v10, v0

    sub-float/2addr v13, v9

    sub-float/2addr v13, v11

    mul-float v18, v18, v13

    const/16 v0, 0x8

    aput v18, v10, v0

    return-object v10
.end method

.method private final contains([F[F)Z
    .locals 12

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1197
    aget v2, p1, v1

    aget v3, p2, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    aget v5, p2, v3

    sub-float/2addr v4, v5

    aput v4, v0, v3

    const/4 v5, 0x2

    .line 1198
    aget v6, p1, v5

    aget v7, p2, v5

    sub-float/2addr v6, v7

    aput v6, v0, v5

    const/4 v6, 0x3

    aget v7, p1, v6

    aget v8, p2, v6

    sub-float/2addr v7, v8

    aput v7, v0, v6

    const/4 v7, 0x4

    .line 1199
    aget v8, p1, v7

    aget v9, p2, v7

    sub-float/2addr v8, v9

    aput v8, v0, v7

    const/4 v8, 0x5

    aget p1, p1, v8

    aget v9, p2, v8

    sub-float/2addr p1, v9

    aput p1, v0, v8

    .line 1206
    aget p1, p2, v1

    aget v9, p2, v7

    sub-float/2addr p1, v9

    .line 1207
    aget v9, p2, v3

    aget v10, p2, v8

    sub-float/2addr v9, v10

    .line 1203
    invoke-direct {p0, v2, v4, p1, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 1210
    aget p1, p2, v1

    aget v4, p2, v5

    sub-float/2addr p1, v4

    .line 1211
    aget v4, p2, v3

    aget v9, p2, v6

    sub-float/2addr v4, v9

    aget v9, v0, v1

    aget v10, v0, v3

    .line 1209
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, v5

    aget v4, v0, v6

    .line 1224
    aget v9, p2, v5

    aget v10, p2, v1

    sub-float/2addr v9, v10

    .line 1225
    aget v10, p2, v6

    aget v11, p2, v3

    sub-float/2addr v10, v11

    .line 1221
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 1228
    aget p1, p2, v5

    aget v4, p2, v7

    sub-float/2addr p1, v4

    .line 1229
    aget v4, p2, v6

    aget v9, p2, v8

    sub-float/2addr v4, v9

    aget v9, v0, v5

    aget v10, v0, v6

    .line 1227
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    aget p1, v0, v7

    aget v4, v0, v8

    .line 1242
    aget v9, p2, v7

    aget v5, p2, v5

    sub-float/2addr v9, v5

    .line 1243
    aget v5, p2, v8

    aget v6, p2, v6

    sub-float/2addr v5, v6

    .line 1239
    invoke-direct {p0, p1, v4, v9, v5}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 1246
    aget p1, p2, v7

    aget v4, p2, v1

    sub-float/2addr p1, v4

    .line 1247
    aget v4, p2, v8

    aget p2, p2, v3

    sub-float/2addr v4, p2

    aget p2, v0, v7

    aget v0, v0, v8

    .line 1245
    invoke-direct {p0, p1, v4, p2, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v2

    if-ltz p0, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method private final cross(FFFF)F
    .locals 0

    mul-float/2addr p1, p4

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    return p1
.end method

.method private final isSrgb([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p7, :cond_0

    return v0

    .line 1021
    :cond_0
    sget-object p7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgbPrimaries$ui_graphics_release()[F

    move-result-object p7

    invoke-static {p1, p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare([F[F)Z

    move-result p1

    const/4 p7, 0x0

    if-nez p1, :cond_1

    return p7

    .line 1024
    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return p7

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, p5, p1

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p6, p1

    if-nez p1, :cond_6

    .line 1033
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p1

    const-wide/16 p5, 0x0

    :goto_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, p5, v1

    if-gtz p2, :cond_5

    .line 1040
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetfOrig$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    .line 1037
    invoke-direct {p0, p5, p6, p3, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z

    move-result p2

    if-nez p2, :cond_3

    return p7

    .line 1046
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfOrig$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    .line 1043
    invoke-direct {p0, p5, p6, p4, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z

    move-result p2

    if-nez p2, :cond_4

    return p7

    :cond_4
    const-wide v1, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr p5, v1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    return p7
.end method

.method private final isWideGamut([FFF)Z
    .locals 2

    .line 1088
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v0

    .line 1089
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953Primaries$ui_graphics_release()[F

    move-result-object v1

    .line 1088
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1092
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgbPrimaries$ui_graphics_release()[F

    move-result-object v0

    .line 1090
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->contains([F[F)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final xyPrimaries([F)[F
    .locals 9

    const/4 p0, 0x6

    new-array v7, p0, [F

    .line 1318
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1319
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-float v4, v1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    add-float/2addr v4, v6

    div-float/2addr v1, v4

    aput v1, v7, v0

    div-float/2addr v3, v4

    aput v3, v7, v2

    const/4 v0, 0x3

    .line 1323
    aget v1, p1, v0

    const/4 v2, 0x4

    aget v3, p1, v2

    add-float v4, v1, v3

    const/4 v6, 0x5

    aget v8, p1, v6

    add-float/2addr v4, v8

    div-float/2addr v1, v4

    aput v1, v7, v5

    div-float/2addr v3, v4

    aput v3, v7, v0

    .line 1327
    aget p0, p1, p0

    const/4 v0, 0x7

    aget v0, p1, v0

    add-float v1, p0, v0

    const/16 v3, 0x8

    aget p1, p1, v3

    add-float/2addr v1, p1

    div-float/2addr p0, v1

    aput p0, v7, v2

    div-float/2addr v0, v1

    aput v0, v7, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v7

    .line 1331
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([F[FIIIILjava/lang/Object;)[F

    :goto_0
    return-object v7
.end method


# virtual methods
.method public final computePrimaries$ui_graphics_release([F)[F
    .locals 10

    const-string/jumbo p0, "toXYZ"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array v0, p0, [F

    fill-array-data v0, :array_0

    .line 1264
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object v0

    new-array v1, p0, [F

    fill-array-data v1, :array_1

    .line 1268
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object v1

    new-array v2, p0, [F

    fill-array-data v2, :array_2

    .line 1272
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p1

    const/4 v2, 0x0

    .line 1277
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    add-float v6, v3, v5

    const/4 v7, 0x2

    aget v0, v0, v7

    add-float/2addr v6, v0

    .line 1278
    aget v0, v1, v2

    aget v8, v1, v4

    add-float/2addr v0, v8

    aget v8, v1, v7

    add-float/2addr v0, v8

    .line 1279
    aget v8, p1, v2

    aget v9, p1, v4

    add-float/2addr v8, v9

    aget v9, p1, v7

    add-float/2addr v8, v9

    const/4 v9, 0x6

    new-array v9, v9, [F

    div-float/2addr v3, v6

    aput v3, v9, v2

    div-float/2addr v5, v6

    aput v5, v9, v4

    .line 1283
    aget v3, v1, v2

    div-float/2addr v3, v0

    aput v3, v9, v7

    aget v1, v1, v4

    div-float/2addr v1, v0

    aput v1, v9, p0

    .line 1284
    aget p0, p1, v2

    div-float/2addr p0, v8

    const/4 v0, 0x4

    aput p0, v9, v0

    aget p0, p1, v4

    div-float/2addr p0, v8

    const/4 p1, 0x5

    aput p0, v9, p1

    return-object v9

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
