.class public abstract Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder<",
        "Landroidx/media3/extractor/text/SubtitleInputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
        "Landroidx/media3/extractor/text/SubtitleDecoderException;",
        ">;",
        "Landroidx/media3/extractor/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/media3/extractor/text/SubtitleInputBuffer;

    new-array v0, v0, [Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 38
    invoke-direct {p0, v1, v0}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/DecoderOutputBuffer;)V

    iput-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    const/16 p1, 0x400

    .line 40
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;Landroidx/media3/decoder/DecoderOutputBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->createInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected final createInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 0

    .line 55
    new-instance p0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic createOutputBuffer()Landroidx/media3/decoder/DecoderOutputBuffer;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->createOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected final createOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 1

    .line 60
    new-instance v0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;-><init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method protected final createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 1

    .line 70
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v0, "Unexpected decode error"

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method protected bridge synthetic decode(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/DecoderOutputBuffer;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 26
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    check-cast p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;Landroidx/media3/extractor/text/SubtitleOutputBuffer;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method protected abstract decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;Landroidx/media3/extractor/text/SubtitleOutputBuffer;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 8

    .line 79
    :try_start_0
    iget-object v0, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decode([BIZ)Landroidx/media3/extractor/text/Subtitle;

    move-result-object v5

    .line 81
    iget-wide v3, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v6, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    const/high16 p0, -0x80000000

    .line 83
    invoke-virtual {p2, p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
