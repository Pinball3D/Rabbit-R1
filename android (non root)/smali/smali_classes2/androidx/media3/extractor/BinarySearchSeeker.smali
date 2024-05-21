.class public abstract Landroidx/media3/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;,
        Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;,
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation


# static fields
.field private static final MAX_SKIP_BYTES:J = 0x40000L


# instance fields
.field private final minimumSearchRange:I

.field protected final seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field protected seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field protected final timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method protected constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 134
    new-instance v15, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v15, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method


# virtual methods
.method protected createSeekParamsForTargetTimeUs(J)Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;
    .locals 18

    move-object/from16 v0, p0

    .line 226
    new-instance v15, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-wide/from16 v2, p1

    .line 228
    invoke-virtual {v1, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 229
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v6

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 230
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v8

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 231
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v10

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 232
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v12

    iget-object v0, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 233
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v16

    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v13, v16

    invoke-direct/range {v0 .. v14}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    return-object v15
.end method

.method public final getSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object p0
.end method

.method public handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 181
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 182
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v1

    .line 183
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v3

    .line 184
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Landroidx/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    .line 188
    invoke-virtual {p0, v4, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 189
    invoke-virtual {p0, p1, v1, v2, p2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 191
    :cond_0
    invoke-virtual {p0, p1, v5, v6}, Landroidx/media3/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    invoke-virtual {p0, p1, v5, v6, p2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 195
    :cond_1
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v1, p0, Landroidx/media3/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 197
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    .line 209
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroidx/media3/extractor/ExtractorInput;J)Z

    const/4 v0, 0x1

    .line 211
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    .line 210
    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 213
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    .line 212
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 220
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid case"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_3
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 201
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto :goto_0

    .line 206
    :cond_4
    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-static {v1}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 205
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto/16 :goto_0

    .line 217
    :cond_5
    invoke-virtual {p0, v4, v5, v6}, Landroidx/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 218
    invoke-virtual {p0, p1, v5, v6, p2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public final isSeeking()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final markSeekOperationFinished(ZJ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 238
    invoke-interface {v0}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    return-void
.end method

.method protected onSeekOperationFinished(ZJ)V
    .locals 0

    return-void
.end method

.method protected final seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I
    .locals 0

    .line 258
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    iput-wide p2, p4, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0
.end method

.method public final setSeekTargetUs(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {v0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method

.method protected final skipInputUntilPosition(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long p0, p2, v0

    if-gtz p0, :cond_0

    long-to-int p0, p2

    .line 250
    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
