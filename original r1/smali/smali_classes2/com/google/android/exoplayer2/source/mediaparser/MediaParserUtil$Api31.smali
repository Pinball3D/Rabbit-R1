.class final Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil$Api31;
.super Ljava/lang/Object;
.source "MediaParserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    .line 83
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/MediaParser;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
