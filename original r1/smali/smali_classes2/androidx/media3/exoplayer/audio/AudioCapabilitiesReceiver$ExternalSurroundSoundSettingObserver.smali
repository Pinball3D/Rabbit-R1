.class final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
.super Landroid/database/ContentObserver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalSurroundSoundSettingObserver"
.end annotation


# instance fields
.field private final resolver:Landroid/content/ContentResolver;

.field private final settingUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 163
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 178
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    .line 173
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
