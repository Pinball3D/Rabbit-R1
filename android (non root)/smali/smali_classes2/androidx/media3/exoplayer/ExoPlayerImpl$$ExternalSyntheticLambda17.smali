.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;->f$0:Z

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$setShuffleModeEnabled$4(ZLandroidx/media3/common/Player$Listener;)V

    return-void
.end method
