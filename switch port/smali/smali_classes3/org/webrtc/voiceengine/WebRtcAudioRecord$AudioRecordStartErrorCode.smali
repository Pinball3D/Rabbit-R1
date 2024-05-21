.class public final enum Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
.super Ljava/lang/Enum;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioRecordStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    new-instance v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string v1, "AUDIO_RECORD_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    .line 68
    new-instance v1, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string v2, "AUDIO_RECORD_START_STATE_MISMATCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    filled-new-array {v0, v1}, [Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1

    const-class v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1

    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    .line 66
    invoke-virtual {v0}, [Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object v0
.end method
