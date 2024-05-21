.class public final Lcom/google/android/exoplayer2/C;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/C$FormatSupport;,
        Lcom/google/android/exoplayer2/C$RoleFlags;,
        Lcom/google/android/exoplayer2/C$WakeMode;,
        Lcom/google/android/exoplayer2/C$NetworkType;,
        Lcom/google/android/exoplayer2/C$Projection;,
        Lcom/google/android/exoplayer2/C$ColorRange;,
        Lcom/google/android/exoplayer2/C$ColorTransfer;,
        Lcom/google/android/exoplayer2/C$ColorSpace;,
        Lcom/google/android/exoplayer2/C$StereoMode;,
        Lcom/google/android/exoplayer2/C$SelectionReason;,
        Lcom/google/android/exoplayer2/C$TrackType;,
        Lcom/google/android/exoplayer2/C$DataType;,
        Lcom/google/android/exoplayer2/C$ContentType;,
        Lcom/google/android/exoplayer2/C$SelectionFlags;,
        Lcom/google/android/exoplayer2/C$VideoChangeFrameRateStrategy;,
        Lcom/google/android/exoplayer2/C$VideoScalingMode;,
        Lcom/google/android/exoplayer2/C$VideoOutputMode;,
        Lcom/google/android/exoplayer2/C$BufferFlags;,
        Lcom/google/android/exoplayer2/C$AudioAllowedCapturePolicy;,
        Lcom/google/android/exoplayer2/C$AudioUsage;,
        Lcom/google/android/exoplayer2/C$AudioFlags;,
        Lcom/google/android/exoplayer2/C$AudioContentType;,
        Lcom/google/android/exoplayer2/C$StreamType;,
        Lcom/google/android/exoplayer2/C$SpatializationBehavior;,
        Lcom/google/android/exoplayer2/C$PcmEncoding;,
        Lcom/google/android/exoplayer2/C$Encoding;,
        Lcom/google/android/exoplayer2/C$CryptoMode;,
        Lcom/google/android/exoplayer2/C$CryptoType;
    }
.end annotation


# static fields
.field public static final ALLOW_CAPTURE_BY_ALL:I = 0x1

.field public static final ALLOW_CAPTURE_BY_NONE:I = 0x3

.field public static final ALLOW_CAPTURE_BY_SYSTEM:I = 0x2

.field public static final ASCII_NAME:Ljava/lang/String; = "US-ASCII"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUDIO_CONTENT_TYPE_MOVIE:I = 0x3

.field public static final AUDIO_CONTENT_TYPE_MUSIC:I = 0x2

.field public static final AUDIO_CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final AUDIO_CONTENT_TYPE_SPEECH:I = 0x1

.field public static final AUDIO_CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final AUDIO_SESSION_ID_UNSET:I = 0x0

.field public static final BITS_PER_BYTE:I = 0x8

.field public static final BUFFER_FLAG_DECODE_ONLY:I = -0x80000000

.field public static final BUFFER_FLAG_ENCRYPTED:I = 0x40000000

.field public static final BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final BUFFER_FLAG_FIRST_SAMPLE:I = 0x8000000

.field public static final BUFFER_FLAG_HAS_SUPPLEMENTAL_DATA:I = 0x10000000

.field public static final BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final BUFFER_FLAG_LAST_SAMPLE:I = 0x20000000

.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final CENC_TYPE_cbc1:Ljava/lang/String; = "cbc1"

.field public static final CENC_TYPE_cbcs:Ljava/lang/String; = "cbcs"

.field public static final CENC_TYPE_cenc:Ljava/lang/String; = "cenc"

.field public static final CENC_TYPE_cens:Ljava/lang/String; = "cens"

.field public static final CLEARKEY_UUID:Ljava/util/UUID;

.field public static final COLOR_RANGE_FULL:I = 0x1

.field public static final COLOR_RANGE_LIMITED:I = 0x2

.field public static final COLOR_SPACE_BT2020:I = 0x6

.field public static final COLOR_SPACE_BT601:I = 0x2

.field public static final COLOR_SPACE_BT709:I = 0x1

.field public static final COLOR_TRANSFER_HLG:I = 0x7

.field public static final COLOR_TRANSFER_SDR:I = 0x3

.field public static final COLOR_TRANSFER_ST2084:I = 0x6

.field public static final COMMON_PSSH_UUID:Ljava/util/UUID;

.field public static final CONTENT_TYPE_DASH:I = 0x0

.field public static final CONTENT_TYPE_HLS:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_MUSIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_OTHER:I = 0x4

.field public static final CONTENT_TYPE_RTSP:I = 0x3

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_SPEECH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_SS:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field public static final CRYPTO_TYPE_CUSTOM_BASE:I = 0x2710

.field public static final CRYPTO_TYPE_FRAMEWORK:I = 0x2

.field public static final CRYPTO_TYPE_NONE:I = 0x0

.field public static final CRYPTO_TYPE_UNSUPPORTED:I = 0x1

.field public static final DATA_TYPE_AD:I = 0x6

.field public static final DATA_TYPE_CUSTOM_BASE:I = 0x2710

.field public static final DATA_TYPE_DRM:I = 0x3

.field public static final DATA_TYPE_MANIFEST:I = 0x4

.field public static final DATA_TYPE_MEDIA:I = 0x1

.field public static final DATA_TYPE_MEDIA_INITIALIZATION:I = 0x2

.field public static final DATA_TYPE_MEDIA_PROGRESSIVE_LIVE:I = 0x7

.field public static final DATA_TYPE_TIME_SYNCHRONIZATION:I = 0x5

.field public static final DATA_TYPE_UNKNOWN:I = 0x0

.field public static final DEFAULT_BUFFER_SEGMENT_SIZE:I = 0x10000

.field public static final DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS:J = 0xbb8L

.field public static final DEFAULT_SEEK_BACK_INCREMENT_MS:J = 0x1388L

.field public static final DEFAULT_SEEK_FORWARD_INCREMENT_MS:J = 0x3a98L

.field public static final ENCODING_AAC_ELD:I = 0xf

.field public static final ENCODING_AAC_ER_BSAC:I = 0x40000000

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AAC_XHE:I = 0x10

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AC4:I = 0x11

.field public static final ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_E_AC3_JOC:I = 0x12

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_OPUS:I = 0x14

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_16BIT_BIG_ENDIAN:I = 0x10000000

.field public static final ENCODING_PCM_24BIT:I = 0x20000000

.field public static final ENCODING_PCM_32BIT:I = 0x30000000

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FORMAT_EXCEEDS_CAPABILITIES:I = 0x3

.field public static final FORMAT_HANDLED:I = 0x4

.field public static final FORMAT_UNSUPPORTED_DRM:I = 0x2

.field public static final FORMAT_UNSUPPORTED_SUBTYPE:I = 0x1

.field public static final FORMAT_UNSUPPORTED_TYPE:I = 0x0

.field public static final INDEX_UNSET:I = -0x1

.field public static final ISO88591_NAME:Ljava/lang/String; = "ISO-8859-1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LANGUAGE_UNDETERMINED:Ljava/lang/String; = "und"

.field public static final LENGTH_UNSET:I = -0x1

.field public static final MICROS_PER_SECOND:J = 0xf4240L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NETWORK_TYPE_2G:I = 0x3

.field public static final NETWORK_TYPE_3G:I = 0x4

.field public static final NETWORK_TYPE_4G:I = 0x5

.field public static final NETWORK_TYPE_5G_NSA:I = 0xa

.field public static final NETWORK_TYPE_5G_SA:I = 0x9

.field public static final NETWORK_TYPE_CELLULAR_UNKNOWN:I = 0x6

.field public static final NETWORK_TYPE_ETHERNET:I = 0x7

.field public static final NETWORK_TYPE_OFFLINE:I = 0x1

.field public static final NETWORK_TYPE_OTHER:I = 0x8

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field public static final PERCENTAGE_UNSET:I = -0x1

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final POSITION_UNSET:I = -0x1

.field public static final PRIORITY_DOWNLOAD:I = -0x3e8

.field public static final PRIORITY_PLAYBACK:I = 0x0

.field public static final PROJECTION_CUBEMAP:I = 0x2

.field public static final PROJECTION_EQUIRECTANGULAR:I = 0x1

.field public static final PROJECTION_MESH:I = 0x3

.field public static final PROJECTION_RECTANGULAR:I = 0x0

.field public static final RATE_UNSET:F = -3.4028235E38f

.field public static final RATE_UNSET_INT:I = -0x7fffffff

.field public static final RESULT_BUFFER_READ:I = -0x4

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_FORMAT_READ:I = -0x5

.field public static final RESULT_MAX_LENGTH_EXCEEDED:I = -0x2

.field public static final RESULT_NOTHING_READ:I = -0x3

.field public static final ROLE_FLAG_ALTERNATE:I = 0x2

.field public static final ROLE_FLAG_CAPTION:I = 0x40

.field public static final ROLE_FLAG_COMMENTARY:I = 0x8

.field public static final ROLE_FLAG_DESCRIBES_MUSIC_AND_SOUND:I = 0x400

.field public static final ROLE_FLAG_DESCRIBES_VIDEO:I = 0x200

.field public static final ROLE_FLAG_DUB:I = 0x10

.field public static final ROLE_FLAG_EASY_TO_READ:I = 0x2000

.field public static final ROLE_FLAG_EMERGENCY:I = 0x20

.field public static final ROLE_FLAG_ENHANCED_DIALOG_INTELLIGIBILITY:I = 0x800

.field public static final ROLE_FLAG_MAIN:I = 0x1

.field public static final ROLE_FLAG_SIGN:I = 0x100

.field public static final ROLE_FLAG_SUBTITLE:I = 0x80

.field public static final ROLE_FLAG_SUPPLEMENTARY:I = 0x4

.field public static final ROLE_FLAG_TRANSCRIBES_DIALOG:I = 0x1000

.field public static final ROLE_FLAG_TRICK_PLAY:I = 0x4000

.field public static final SANS_SERIF_NAME:Ljava/lang/String; = "sans-serif"

.field public static final SELECTION_FLAG_AUTOSELECT:I = 0x4

.field public static final SELECTION_FLAG_DEFAULT:I = 0x1

.field public static final SELECTION_FLAG_FORCED:I = 0x2

.field public static final SELECTION_REASON_ADAPTIVE:I = 0x3

.field public static final SELECTION_REASON_CUSTOM_BASE:I = 0x2710

.field public static final SELECTION_REASON_INITIAL:I = 0x1

.field public static final SELECTION_REASON_MANUAL:I = 0x2

.field public static final SELECTION_REASON_TRICK_PLAY:I = 0x4

.field public static final SELECTION_REASON_UNKNOWN:I = 0x0

.field public static final SERIF_NAME:Ljava/lang/String; = "serif"

.field public static final SPATIALIZATION_BEHAVIOR_AUTO:I = 0x0

.field public static final SPATIALIZATION_BEHAVIOR_NEVER:I = 0x1

.field public static final SSAI_SCHEME:Ljava/lang/String; = "ssai"

.field public static final STEREO_MODE_LEFT_RIGHT:I = 0x2

.field public static final STEREO_MODE_MONO:I = 0x0

.field public static final STEREO_MODE_STEREO_MESH:I = 0x3

.field public static final STEREO_MODE_TOP_BOTTOM:I = 0x1

.field public static final STREAM_TYPE_ALARM:I = 0x4

.field public static final STREAM_TYPE_DEFAULT:I = 0x3

.field public static final STREAM_TYPE_DTMF:I = 0x8

.field public static final STREAM_TYPE_MUSIC:I = 0x3

.field public static final STREAM_TYPE_NOTIFICATION:I = 0x5

.field public static final STREAM_TYPE_RING:I = 0x2

.field public static final STREAM_TYPE_SYSTEM:I = 0x1

.field public static final STREAM_TYPE_VOICE_CALL:I = 0x0

.field public static final TIME_END_OF_SOURCE:J = -0x8000000000000000L

.field public static final TIME_UNSET:J = -0x7fffffffffffffffL

.field public static final TRACK_TYPE_AUDIO:I = 0x1

.field public static final TRACK_TYPE_CAMERA_MOTION:I = 0x6

.field public static final TRACK_TYPE_CUSTOM_BASE:I = 0x2710

.field public static final TRACK_TYPE_DEFAULT:I = 0x0

.field public static final TRACK_TYPE_IMAGE:I = 0x4

.field public static final TRACK_TYPE_METADATA:I = 0x5

.field public static final TRACK_TYPE_NONE:I = -0x2

.field public static final TRACK_TYPE_TEXT:I = 0x3

.field public static final TRACK_TYPE_UNKNOWN:I = -0x1

.field public static final TRACK_TYPE_VIDEO:I = 0x2

.field public static final TYPE_DASH:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_HLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_OTHER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_RTSP:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field public static final UTF16LE_NAME:Ljava/lang/String; = "UTF-16LE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTF16_NAME:Ljava/lang/String; = "UTF-16"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTF8_NAME:Ljava/lang/String; = "UTF-8"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UUID_NIL:Ljava/util/UUID;

.field public static final VIDEO_CHANGE_FRAME_RATE_STRATEGY_OFF:I = -0x80000000

.field public static final VIDEO_CHANGE_FRAME_RATE_STRATEGY_ONLY_IF_SEAMLESS:I = 0x0

.field public static final VIDEO_OUTPUT_MODE_NONE:I = -0x1

.field public static final VIDEO_OUTPUT_MODE_SURFACE_YUV:I = 0x1

.field public static final VIDEO_OUTPUT_MODE_YUV:I = 0x0

.field public static final VIDEO_SCALING_MODE_DEFAULT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field public static final WAKE_MODE_LOCAL:I = 0x1

.field public static final WAKE_MODE_NETWORK:I = 0x2

.field public static final WAKE_MODE_NONE:I

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 974
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    .line 981
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x1077efecc0b24d02L

    const-wide v3, -0x531cc3e1ad1d04b5L    # -1.8442503140481377E-92

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 988
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x1d8e62a7567a4c37L    # -1.6229728350858627E166

    const-wide v3, 0x781ab030af78d30eL    # 3.524813189889319E270

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 995
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 1003
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAudioSessionIdV21(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getErrorCodeForMediaDrmErrorCode(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1412
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    return p0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1400
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static msToUs(J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1377
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static usToMs(J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1366
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method
