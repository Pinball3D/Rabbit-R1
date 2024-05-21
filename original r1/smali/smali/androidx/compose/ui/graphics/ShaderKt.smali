.class public final Landroidx/compose/ui/graphics/ShaderKt;
.super Ljava/lang/Object;
.source "Shader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u001a3\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001aQ\u0010\n\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001aQ\u0010\u0016\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00122\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a?\u0010\u001b\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0017\u001a\u00020\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "ImageShader",
        "Landroid/graphics/Shader;",
        "Landroidx/compose/ui/graphics/Shader;",
        "image",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "tileModeX",
        "Landroidx/compose/ui/graphics/TileMode;",
        "tileModeY",
        "ImageShader-F49vj9s",
        "(Landroidx/compose/ui/graphics/ImageBitmap;II)Landroid/graphics/Shader;",
        "LinearGradientShader",
        "from",
        "Landroidx/compose/ui/geometry/Offset;",
        "to",
        "colors",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "colorStops",
        "",
        "tileMode",
        "LinearGradientShader-VjE6UOU",
        "(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;",
        "RadialGradientShader",
        "center",
        "radius",
        "RadialGradientShader-8uybcMk",
        "(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;",
        "SweepGradientShader",
        "SweepGradientShader-9KIMszo",
        "(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;",
        "ui-graphics_release"
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
.method public static final ImageShader-F49vj9s(Landroidx/compose/ui/graphics/ImageBitmap;II)Landroid/graphics/Shader;
    .locals 1

    const-string v0, "image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->ActualImageShader-F49vj9s(Landroidx/compose/ui/graphics/ImageBitmap;II)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ImageShader-F49vj9s$default(Landroidx/compose/ui/graphics/ImageBitmap;IIILjava/lang/Object;)Landroid/graphics/Shader;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    .line 122
    sget-object p1, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/TileMode$Companion;->getClamp-3opZhB0()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 123
    sget-object p2, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TileMode$Companion;->getClamp-3opZhB0()I

    move-result p2

    .line 120
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/ShaderKt;->ImageShader-F49vj9s(Landroidx/compose/ui/graphics/ImageBitmap;II)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static final LinearGradientShader-VjE6UOU(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->ActualLinearGradientShader-VjE6UOU(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic LinearGradientShader-VjE6UOU$default(JJLjava/util/List;Ljava/util/List;IILjava/lang/Object;)Landroid/graphics/Shader;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    .line 43
    sget-object p5, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {p5}, Landroidx/compose/ui/graphics/TileMode$Companion;->getClamp-3opZhB0()I

    move-result p6

    :cond_1
    move v6, p6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    .line 38
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/ShaderKt;->LinearGradientShader-VjE6UOU(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static final RadialGradientShader-8uybcMk(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->ActualRadialGradientShader-8uybcMk(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic RadialGradientShader-8uybcMk$default(JFLjava/util/List;Ljava/util/List;IILjava/lang/Object;)Landroid/graphics/Shader;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 80
    sget-object p4, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/graphics/TileMode$Companion;->getClamp-3opZhB0()I

    move-result p5

    :cond_1
    move v5, p5

    move-wide v0, p0

    move v2, p2

    move-object v3, p3

    .line 75
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/ShaderKt;->RadialGradientShader-8uybcMk(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static final SweepGradientShader-9KIMszo(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->ActualSweepGradientShader-9KIMszo(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic SweepGradientShader-9KIMszo$default(JLjava/util/List;Ljava/util/List;ILjava/lang/Object;)Landroid/graphics/Shader;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 103
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/ShaderKt;->SweepGradientShader-9KIMszo(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method
