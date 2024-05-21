.class final Lcom/google/android/exoplayer2/StreamVolumeManager;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;,
        Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamVolumeManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final VOLUME_FLAGS:I = 0x1


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final audioManager:Landroid/media/AudioManager;

.field private final eventHandler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

.field private muted:Z

.field private receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

.field private streamType:I

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    const-string p2, "audio"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 67
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 71
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    iget p3, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 72
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    .line 74
    new-instance p2, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;Lcom/google/android/exoplayer2/StreamVolumeManager$1;)V

    .line 75
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "StreamVolumeManager"

    const-string p2, "Error registering stream volume receiver"

    .line 80
    invoke-static {p1, p2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/StreamVolumeManager;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method private static getMutedFromManager(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 203
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

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

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private updateVolumeAndNotifyIfChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 181
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 182
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    .line 186
    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;->onStreamVolumeChanged(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseVolume()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public getMaxVolume()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 108
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMinVolume()I
    .locals 2

    .line 100
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

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

    iget p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    return p0
.end method

.method public increaseVolume()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    const/4 v2, 0x1

    .line 141
    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public isMuted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    return p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 174
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 3

    .line 159
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    if-eqz p1, :cond_0

    const/16 p1, -0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 163
    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 165
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 91
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    .line 92
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;->onStreamTypeChanged(I)V

    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 130
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    :cond_1
    :goto_0
    return-void
.end method
