.class public Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "DefaultLoadErrorHandlingPolicy.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;


# static fields
.field private static final DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT:I = -0x1

.field public static final DEFAULT_LOCATION_EXCLUSION_MS:J = 0x493e0L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE:I = 0x6

.field public static final DEFAULT_TRACK_BLACKLIST_MS:J = 0xea60L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TRACK_EXCLUSION_MS:J = 0xea60L


# instance fields
.field private final minimumLoadableRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    return-void
.end method


# virtual methods
.method public getFallbackSelectionFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    .locals 2

    .line 94
    iget-object p2, p2, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->isEligibleForFallback(Ljava/io/IOException;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x1

    .line 98
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;-><init>(IJ)V

    return-object p1

    :cond_1
    const/4 p0, 0x2

    .line 100
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    new-instance p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    const-wide/32 v0, 0xea60

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;-><init>(IJ)V

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getMinimumLoadableRetryCount(I)I
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :cond_1
    :goto_0
    return p0
.end method

.method public getRetryDelayMsFor(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .locals 1

    .line 115
    iget-object p0, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    .line 120
    instance-of v0, p0, Landroidx/media3/common/ParserException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget p0, p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 p1, 0x1388

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    return-wide p0
.end method

.method protected isEligibleForFallback(Ljava/io/IOException;)Z
    .locals 2

    .line 142
    instance-of p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 145
    :cond_0
    check-cast p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 147
    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x193

    if-eq p0, v1, :cond_1

    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x194

    if-eq p0, v1, :cond_1

    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x19a

    if-eq p0, v1, :cond_1

    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x1a0

    if-eq p0, v1, :cond_1

    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_1

    iget p0, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 p1, 0x1f7

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
