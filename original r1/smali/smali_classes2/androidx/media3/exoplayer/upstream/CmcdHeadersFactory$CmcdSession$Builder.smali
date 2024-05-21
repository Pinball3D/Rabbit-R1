.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentId:Ljava/lang/String;

.field private customData:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private streamType:Ljava/lang/String;

.field private streamingFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamingFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;
    .locals 2

    .line 605
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamType:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamingFormat(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->streamingFormat:Ljava/lang/String;

    return-object p0
.end method
