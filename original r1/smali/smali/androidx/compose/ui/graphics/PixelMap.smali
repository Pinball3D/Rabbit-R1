.class public final Landroidx/compose/ui/graphics/PixelMap;
.super Ljava/lang/Object;
.source "PixelMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ)\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/PixelMap;",
        "",
        "buffer",
        "",
        "width",
        "",
        "height",
        "bufferOffset",
        "stride",
        "([IIIII)V",
        "getBuffer",
        "()[I",
        "getBufferOffset",
        "()I",
        "getHeight",
        "getStride",
        "getWidth",
        "get",
        "Landroidx/compose/ui/graphics/Color;",
        "x",
        "y",
        "get-WaAFU9c",
        "(II)J",
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


# instance fields
.field private final buffer:[I

.field private final bufferOffset:I

.field private final height:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>([IIIII)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    iput p2, p0, Landroidx/compose/ui/graphics/PixelMap;->width:I

    iput p3, p0, Landroidx/compose/ui/graphics/PixelMap;->height:I

    iput p4, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    iput p5, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    return-void
.end method


# virtual methods
.method public final get-WaAFU9c(II)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    iget v1, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    mul-int/2addr p2, p0

    add-int/2addr v1, p2

    add-int/2addr v1, p1

    .line 53
    aget p0, v0, v1

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBuffer()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    return-object p0
.end method

.method public final getBufferOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->height:I

    return p0
.end method

.method public final getStride()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->width:I

    return p0
.end method
