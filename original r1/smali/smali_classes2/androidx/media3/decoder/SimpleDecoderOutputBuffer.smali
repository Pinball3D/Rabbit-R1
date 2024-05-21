.class public Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SimpleDecoderOutputBuffer.java"


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field private final owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/SimpleDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/SimpleDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;->clear()V

    iget-object p0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public init(JI)Ljava/nio/ByteBuffer;
    .locals 0

    .line 43
    iput-wide p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1

    .line 45
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 62
    invoke-interface {v0, p0}, Landroidx/media3/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
