.class public final Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;
.super Ljava/lang/Object;
.source "AndroidImageBitmap.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a=\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0001\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u000e\u001a\u0019\u0010\u0010\u001a\u00020\u0011*\u00020\u0006H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0014\u0010\u0014\u001a\u00020\u0006*\u00020\u0011H\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0015\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "ActualImageBitmap",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "width",
        "",
        "height",
        "config",
        "Landroidx/compose/ui/graphics/ImageBitmapConfig;",
        "hasAlpha",
        "",
        "colorSpace",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "ActualImageBitmap-x__-hDU",
        "(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/ImageBitmap;",
        "asAndroidBitmap",
        "Landroid/graphics/Bitmap;",
        "asImageBitmap",
        "toBitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "toBitmapConfig-1JJdX4A",
        "(I)Landroid/graphics/Bitmap$Config;",
        "toImageConfig",
        "(Landroid/graphics/Bitmap$Config;)I",
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
.method public static final ActualImageBitmap-x__-hDU(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    const-string v0, "colorSpace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Api26Bitmap;->createBitmap-x__-hDU$ui_graphics_release(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 54
    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    check-cast p1, Landroidx/compose/ui/graphics/ImageBitmap;

    return-object p1
.end method

.method public static final asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v0, p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->getBitmap$ui_graphics_release()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    check-cast v0, Landroidx/compose/ui/graphics/ImageBitmap;

    return-object v0
.end method

.method public static final toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 145
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getRgb565-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getF16-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 153
    :cond_3
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getGpu-_sVssgQ()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 154
    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 156
    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method public static final toImageConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    .line 167
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_1

    .line 169
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getRgb565-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 170
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    .line 171
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_3

    .line 173
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getF16-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 174
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_4

    .line 175
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getGpu-_sVssgQ()I

    move-result p0

    goto :goto_0

    .line 177
    :cond_4
    sget-object p0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result p0

    :goto_0
    return p0
.end method
