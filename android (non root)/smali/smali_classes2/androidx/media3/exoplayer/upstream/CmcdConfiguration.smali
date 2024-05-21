.class public final Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$CmcdKey;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$HeaderKey;
    }
.end annotation


# static fields
.field public static final KEY_BITRATE:Ljava/lang/String; = "br"

.field public static final KEY_BUFFER_LENGTH:Ljava/lang/String; = "bl"

.field public static final KEY_CMCD_OBJECT:Ljava/lang/String; = "CMCD-Object"

.field public static final KEY_CMCD_REQUEST:Ljava/lang/String; = "CMCD-Request"

.field public static final KEY_CMCD_SESSION:Ljava/lang/String; = "CMCD-Session"

.field public static final KEY_CMCD_STATUS:Ljava/lang/String; = "CMCD-Status"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final KEY_MAXIMUM_REQUESTED_BITRATE:Ljava/lang/String; = "rtp"

.field public static final KEY_MEASURED_THROUGHPUT:Ljava/lang/String; = "mtp"

.field public static final KEY_OBJECT_DURATION:Ljava/lang/String; = "d"

.field public static final KEY_OBJECT_TYPE:Ljava/lang/String; = "ot"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sid"

.field public static final KEY_STREAMING_FORMAT:Ljava/lang/String; = "sf"

.field public static final KEY_STREAM_TYPE:Ljava/lang/String; = "st"

.field public static final KEY_TOP_BITRATE:Ljava/lang/String; = "tb"

.field public static final KEY_VERSION:Ljava/lang/String; = "v"

.field public static final MAX_ID_LENGTH:I = 0x40


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;)V
    .locals 4

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-eqz p2, :cond_2

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 209
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    return-void
.end method


# virtual methods
.method public isBitrateLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "br"

    .line 220
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBufferLengthLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "bl"

    .line 228
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isContentIdLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "cid"

    .line 236
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMaximumRequestThroughputLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "rtp"

    .line 252
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMeasuredThroughputLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "mtp"

    .line 292
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isObjectDurationLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "d"

    .line 284
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isObjectTypeLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "ot"

    .line 300
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSessionIdLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "sid"

    .line 244
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isStreamTypeLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "st"

    .line 268
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isStreamingFormatLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "sf"

    .line 260
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isTopBitrateLoggingAllowed()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    const-string v0, "tb"

    .line 276
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
