.class public final Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;
.super Ljava/lang/Object;
.source "AndroidColorFilter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a%\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a%\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0001\u001a\n\u0010\u0014\u001a\u00020\u0001*\u00020\u0013*\u000c\u0008\u0000\u0010\u0015\"\u00020\u00132\u00020\u0013\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "actualColorMatrixColorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "colorMatrix",
        "Landroidx/compose/ui/graphics/ColorMatrix;",
        "actualColorMatrixColorFilter-jHG-Opc",
        "([F)Landroidx/compose/ui/graphics/ColorFilter;",
        "actualLightingColorFilter",
        "multiply",
        "Landroidx/compose/ui/graphics/Color;",
        "add",
        "actualLightingColorFilter--OWjLjI",
        "(JJ)Landroidx/compose/ui/graphics/ColorFilter;",
        "actualTintColorFilter",
        "color",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "actualTintColorFilter-xETnrds",
        "(JI)Landroidx/compose/ui/graphics/ColorFilter;",
        "asAndroidColorFilter",
        "Landroid/graphics/ColorFilter;",
        "asComposeColorFilter",
        "NativeColorFilter",
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
.method public static final actualColorMatrixColorFilter-jHG-Opc([F)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 2

    const-string v0, "colorMatrix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method

.method public static final actualLightingColorFilter--OWjLjI(JJ)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 2

    .line 50
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p1

    invoke-direct {v1, p0, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method

.method public static final actualTintColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    .line 39
    sget-object v0, Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;->INSTANCE:Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;->BlendModeColorFilter-xETnrds(JI)Landroid/graphics/BlendModeColorFilter;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorFilter;

    .line 43
    new-instance p1, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    return-object p1
.end method

.method public static final asAndroidColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ColorFilter;->getNativeColorFilter$ui_graphics_release()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final asComposeColorFilter(Landroid/graphics/ColorFilter;)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method
