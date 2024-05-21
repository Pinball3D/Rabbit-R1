.class public final Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 109
    instance-of v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_0

    .line 110
    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking()V

    :cond_0
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 70
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 71
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 72
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto/16 :goto_4

    .line 74
    :cond_1
    array-length p3, p1

    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_9

    aget-object v1, p1, v0

    .line 76
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 83
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-nez p3, :cond_3

    :cond_2
    move p6, p7

    :cond_3
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_8

    .line 83
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez p0, :cond_5

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    cmp-long p0, p2, p4

    if-nez p0, :cond_6

    :cond_5
    move p6, p7

    :cond_6
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 85
    throw p1

    :catch_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_8

    .line 83
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p6

    goto :goto_2

    :cond_8
    :goto_1
    move v1, p7

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p3, :cond_a

    :goto_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 95
    invoke-interface {p0, p8}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    return-void

    .line 88
    :cond_a
    new-instance p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "None of the available extractors ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ") could read the stream."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 126
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 127
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 121
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    return-void
.end method
