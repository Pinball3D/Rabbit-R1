.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/common/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/common/DeviceInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onStreamTypeChanged$6(Landroidx/media3/common/DeviceInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
