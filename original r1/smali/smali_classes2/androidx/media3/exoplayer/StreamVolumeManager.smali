.class final Landroidx/media3/exoplayer/StreamVolumeManager;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/StreamVolumeManager$Listener;,
        Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamVolumeManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final audioManager:Landroid/media/AudioManager;

.field private final eventHandler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

.field private muted:Z

.field private receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

.field private streamType:I

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    const-string p2, "audio"

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 65
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 69
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    iget p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 70
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    .line 72
    new-instance p2, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$1;)V

    .line 73
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "StreamVolumeManager"

    const-string p2, "Error registering stream volume receiver"

    .line 78
    invoke-static {p1, p2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/StreamVolumeManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method private static getMutedFromManager(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 213
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 216
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getVolumeFromManager(Landroid/media/AudioManager;I)I
    .locals 3

    .line 204
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private updateVolumeAndNotifyIfChanged()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 191
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 192
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    iput-boolean v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    .line 196
    invoke-interface {p0, v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->onStreamVolumeChanged(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseVolume(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    .line 155
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMinVolume()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    const/4 v2, -0x1

    .line 158
    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 159
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public getMaxVolume()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 106
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMinVolume()I
    .locals 2

    .line 98
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVolume()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    return p0
.end method

.method public increaseVolume(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    .line 141
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 145
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public isMuted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    return p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 184
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    :cond_0
    return-void
.end method

.method public setMuted(ZI)V
    .locals 2

    .line 169
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    if-eqz p1, :cond_0

    const/16 p1, -0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 170
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 173
    invoke-virtual {p2, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 175
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 89
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    .line 90
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->onStreamTypeChanged(I)V

    return-void
.end method

.method public setVolume(II)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMinVolume()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMaxVolume()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 130
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 131
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    :cond_1
    :goto_0
    return-void
.end method
