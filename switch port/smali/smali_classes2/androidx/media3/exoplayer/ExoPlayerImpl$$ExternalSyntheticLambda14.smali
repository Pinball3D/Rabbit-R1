.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;->f$0:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$setRepeatMode$3(ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method
