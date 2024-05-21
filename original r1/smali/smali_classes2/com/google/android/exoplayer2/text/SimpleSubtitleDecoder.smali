.class public abstract Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    new-array v0, v0, [Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 36
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    const/16 p1, 0x400

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected final createInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 0

    .line 53
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected final createOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;-><init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method protected final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 1

    .line 68
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected decode error"

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method protected abstract decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    .line 77
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v5

    .line 79
    iget-wide v3, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    const/high16 p0, -0x80000000

    .line 81
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
