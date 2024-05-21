.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bufferLengthMs:J

.field private customData:Ljava/lang/String;

.field private measuredThroughputInKbps:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J
    .locals 2

    .line 422
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    return-wide v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J
    .locals 2

    .line 422
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 422
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;
    .locals 2

    .line 468
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setBufferLengthMs(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 v0, 0x32

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    .line 442
    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->bufferLengthMs:J

    return-object p0
.end method

.method public setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public setMeasuredThroughputInKbps(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 454
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 v0, 0x32

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    .line 455
    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->measuredThroughputInKbps:J

    return-object p0
.end method
