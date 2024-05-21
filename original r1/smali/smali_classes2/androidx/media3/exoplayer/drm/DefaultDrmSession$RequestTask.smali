.class final Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestTask"
.end annotation


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final startTimeMs:J

.field public final taskId:J


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    iput-wide p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    iput-object p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    return-void
.end method
