.class final Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;
.super Ljava/lang/Object;
.source "MediaParserHlsMediaChunkExtractor.java"

# interfaces
.implements Landroid/media/MediaParser$SeekableInputReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeekingInputReader"
.end annotation


# instance fields
.field private final extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private totalPeekedBytes:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;)I
    .locals 0

    .line 270
    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->totalPeekedBytes:I

    return p0
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 293
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 288
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 281
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peek([BII)I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->totalPeekedBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/MediaParserHlsMediaChunkExtractor$PeekingInputReader;->totalPeekedBytes:I

    return p1
.end method

.method public seekToPosition(J)V
    .locals 0

    .line 299
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
