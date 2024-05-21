.class Lorg/webrtc/audio/WebRtcAudioEffects;
.super Ljava/lang/Object;
.source "WebRtcAudioEffects.java"


# static fields
.field private static final AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioEffectsExternal"

.field private static cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private shouldEnableAec:Z

.field private shouldEnableNs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    .line 34
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/audio/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/audio/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ctor"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebRtcAudioEffectsExternal"

    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private effectTypeIsVoIP(Ljava/util/UUID;)Z
    .locals 0

    .line 194
    sget-object p0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 195
    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    sget-object v0, Lorg/webrtc/audio/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 215
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    sput-object v0, Lorg/webrtc/audio/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .locals 2

    .line 59
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    sget-object v1, Lorg/webrtc/audio/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    invoke-static {v0, v1}, Lorg/webrtc/audio/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 6

    .line 223
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 228
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v5, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    iget-object p0, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isNoiseSuppressorSupported()Z
    .locals 2

    .line 66
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    sget-object v1, Lorg/webrtc/audio/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    invoke-static {v0, v1}, Lorg/webrtc/audio/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enable(I)V
    .locals 11

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enable(audioSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 113
    :goto_0
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioEffects;->assertTrue(Z)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 114
    :goto_1
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioEffects;->assertTrue(Z)V

    .line 131
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const-string v4, ", is now: "

    const-string v5, ", enable: "

    const-string v6, "enabled"

    const-string v7, "disabled"

    if-eqz v0, :cond_7

    .line 134
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    iget-boolean v8, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eqz v8, :cond_2

    .line 137
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    iget-object v9, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 138
    invoke-virtual {v9, v8}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Failed to set the AcousticEchoCanceler state"

    .line 139
    invoke-static {v1, v9}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AcousticEchoCanceler: was "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v7

    .line 142
    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 143
    invoke-virtual {v8}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_4

    :cond_5
    move-object v8, v7

    :goto_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v0, "Failed to create the AcousticEchoCanceler instance"

    .line 145
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    :goto_5
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 152
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz p1, :cond_c

    .line 154
    invoke-virtual {p1}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p1

    iget-boolean v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eqz v0, :cond_8

    .line 155
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 156
    invoke-virtual {v0, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Failed to set the NoiseSuppressor state"

    .line 157
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "NoiseSuppressor: was "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    move-object p1, v6

    goto :goto_7

    :cond_a
    move-object p1, v7

    .line 160
    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 161
    invoke-virtual {p0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_8

    :cond_b
    move-object v6, v7

    :goto_8
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    const-string p0, "Failed to create the NoiseSuppressor instance"

    .line 163
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "WebRtcAudioEffectsExternal"

    const-string v1, "release"

    .line 172
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    iput-object v1, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    :cond_0
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    iput-object v1, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    :cond_1
    return-void
.end method

.method public setAEC(Z)Z
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAEC("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AEC is not supported"

    .line 80
    invoke-static {v1, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    return v2

    :cond_0
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eq p1, v0, :cond_1

    const-string p0, "Platform AEC state can\'t be modified while recording"

    .line 85
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iput-boolean p1, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setNS(Z)Z
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform NS is not supported"

    .line 99
    invoke-static {v1, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    return v2

    :cond_0
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eq p1, v0, :cond_1

    const-string p0, "Platform NS state can\'t be modified while recording"

    .line 104
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iput-boolean p1, p0, Lorg/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    const/4 p0, 0x1

    return p0
.end method
