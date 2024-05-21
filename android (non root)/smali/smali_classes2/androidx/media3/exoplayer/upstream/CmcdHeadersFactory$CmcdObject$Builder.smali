.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrateKbps:I

.field private customData:Ljava/lang/String;

.field private objectDurationMs:J

.field private objectType:Ljava/lang/String;

.field private topBitrateKbps:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x7fffffff

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I
    .locals 0

    .line 269
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I
    .locals 0

    .line 269
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)J
    .locals 2

    .line 269
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
    .locals 2

    .line 326
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    return-object p0
.end method

.method public setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectDurationMs(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectType:Ljava/lang/String;

    return-object p0
.end method

.method public setTopBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    return-object p0
.end method
