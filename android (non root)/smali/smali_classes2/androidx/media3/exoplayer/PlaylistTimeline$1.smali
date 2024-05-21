.class Landroidx/media3/exoplayer/PlaylistTimeline$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "PlaylistTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/PlaylistTimeline;->copyWithPlaceholderTimeline(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/exoplayer/PlaylistTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/PlaylistTimeline;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/PlaylistTimeline;Landroidx/media3/common/Timeline;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->this$0:Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 140
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 141
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 10

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    .line 146
    iget p3, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->window:Landroidx/media3/common/Timeline$Window;

    invoke-super {p0, p3, v0}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 148
    iget-object v1, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v2, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v3, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v4, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v6, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 157
    iput-boolean p0, p1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    :goto_0
    return-object p1
.end method
