.class public interface abstract Landroidx/compose/ui/graphics/ImageBitmap;
.super Ljava/lang/Object;
.source "ImageBitmap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/ImageBitmap$Companion;,
        Landroidx/compose/ui/graphics/ImageBitmap$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cJ\u0008\u0010\u0013\u001a\u00020\u0014H&JL\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000fH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001b\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\tR\u0012\u0010\u0011\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\t\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006\u001d\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "",
        "colorSpace",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "getColorSpace",
        "()Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "config",
        "Landroidx/compose/ui/graphics/ImageBitmapConfig;",
        "getConfig-_sVssgQ",
        "()I",
        "hasAlpha",
        "",
        "getHasAlpha",
        "()Z",
        "height",
        "",
        "getHeight",
        "width",
        "getWidth",
        "prepareToDraw",
        "",
        "readPixels",
        "buffer",
        "",
        "startX",
        "startY",
        "bufferOffset",
        "stride",
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
.field public static final Companion:Landroidx/compose/ui/graphics/ImageBitmap$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmap$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/ImageBitmap$Companion;

    sput-object v0, Landroidx/compose/ui/graphics/ImageBitmap;->Companion:Landroidx/compose/ui/graphics/ImageBitmap$Companion;

    return-void
.end method

.method public static synthetic readPixels$default(Landroidx/compose/ui/graphics/ImageBitmap;[IIIIIIIILjava/lang/Object;)V
    .locals 6

    if-nez p9, :cond_6

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    .line 81
    invoke-interface {p0}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    .line 82
    invoke-interface {p0}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v4

    move p8, v1

    move p9, v5

    .line 77
    invoke-interface/range {p2 .. p9}, Landroidx/compose/ui/graphics/ImageBitmap;->readPixels([IIIIIII)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: readPixels"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getColorSpace()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.end method

.method public abstract getConfig-_sVssgQ()I
.end method

.method public abstract getHasAlpha()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract prepareToDraw()V
.end method

.method public abstract readPixels([IIIIIII)V
.end method
