.class final Lcom/google/android/exoplayer2/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;,
        Lcom/google/android/exoplayer2/AudioFocusManager$PlayerCommand;,
        Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
    }
.end annotation


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x1

.field private static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final AUDIOFOCUS_NONE:I = 0x0

.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x1

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x3

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x0

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGainToRequest:I

.field private final focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field private playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 166
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 169
    new-instance p1, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;-><init>(Lcom/google/android/exoplayer2/AudioFocusManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method private abandonAudioFocusDefault()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    .line 289
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusDefault()V

    :goto_0
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method private abandonAudioFocusV26()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 295
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/AudioFocusManager;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 319
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 377
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unidentified audio usage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 363
    :pswitch_1
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    .line 371
    :pswitch_2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_2

    return v4

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 335
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_0

    .line 427
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    :cond_0
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown focus change type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 404
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 405
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    return-void

    .line 408
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_4

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 417
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 414
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p1, 0x2

    .line 415
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    :goto_1
    return-void
.end method

.method private requestAudioFocus()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 237
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 239
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    const/4 p0, -0x1

    return p0
.end method

.method private requestAudioFocusDefault()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 262
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    .line 260
    invoke-virtual {v0, v1, v2, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method

.method private requestAudioFocusV26()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 271
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 272
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 278
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 277
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    .line 280
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 285
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method private setAudioFocusState(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_3

    .line 397
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_3
    return-void
.end method

.method private shouldAbandonAudioFocusIfHeld(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private willPauseWhenDucked()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz p0, :cond_0

    .line 300
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    return-object p0
.end method

.method public getVolumeMultiplier()F
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    return p0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 188
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 190
    invoke-static {p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 191
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .locals 1

    .line 206
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager;->shouldAbandonAudioFocusIfHeld(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    :cond_2
    return v0
.end method
