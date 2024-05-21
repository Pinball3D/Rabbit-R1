.class final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;
.super Landroid/media/AudioDeviceCallback;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioDeviceCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 183
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 186
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 191
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method
