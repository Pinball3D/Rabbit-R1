.class final Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManifestExpiryEventInfo"
.end annotation


# instance fields
.field public final eventTimeUs:J

.field public final manifestPublishTimeMsInEmsg:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->eventTimeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->manifestPublishTimeMsInEmsg:J

    return-void
.end method
