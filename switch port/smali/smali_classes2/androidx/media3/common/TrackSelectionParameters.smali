.class public Landroidx/media3/common/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/TrackSelectionParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/TrackSelectionParameters;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/common/TrackSelectionParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

.field private static final FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

.field private static final FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

.field private static final FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

.field private static final FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

.field private static final FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

.field private static final FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

.field private static final FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

.field private static final FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

.field private static final FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

.field private static final FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

.field private static final FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

.field private static final FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

.field private static final FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

.field private static final FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

.field private static final FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

.field private static final FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

.field private static final FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

.field private static final FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

.field private static final FIELD_VIEWPORT_WIDTH:Ljava/lang/String;


# instance fields
.field public final disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final forceHighestSupportedBitrate:Z

.field public final forceLowestBitrate:Z

.field public final ignoredTextSelectionFlags:I

.field public final maxAudioBitrate:I

.field public final maxAudioChannelCount:I

.field public final maxVideoBitrate:I

.field public final maxVideoFrameRate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final minVideoBitrate:I

.field public final minVideoFrameRate:I

.field public final minVideoHeight:I

.field public final minVideoWidth:I

.field public final overrides:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioRoleFlags:I

.field public final preferredTextLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredTextRoleFlags:I

.field public final preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredVideoRoleFlags:I

.field public final selectUndeterminedTextLanguage:Z

.field public final viewportHeight:I

.field public final viewportOrientationMayChange:Z

.field public final viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 808
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    const/4 v0, 0x1

    .line 1082
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1083
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1084
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1085
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1086
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1087
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1088
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1089
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1090
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1091
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1092
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1093
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1094
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1095
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_WIDTH:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1096
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1097
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1098
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1099
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1100
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1101
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1102
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1103
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1104
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1105
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1106
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1107
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

    .line 1170
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/TrackSelectionParameters$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/TrackSelectionParameters;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V
    .locals 1

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$2600(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    .line 967
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$2700(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    .line 968
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$2800(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    .line 969
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$2900(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    .line 970
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3000(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    .line 971
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3100(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    .line 972
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3200(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    .line 973
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3300(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    .line 974
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3400(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    .line 975
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3500(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    .line 976
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3600(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 977
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3700(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 978
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3800(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    .line 980
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$3900(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 981
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4000(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    .line 982
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4100(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    .line 983
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4200(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    .line 984
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4300(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 986
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4400(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 987
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4500(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 988
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4600(Landroidx/media3/common/TrackSelectionParameters$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    .line 989
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4700(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 991
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4800(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    .line 992
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$4900(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    .line 993
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$5000(Landroidx/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 994
    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->access$5100(Landroidx/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_WIDTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1163
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaults(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 818
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 999
    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1008
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1011
    :cond_1
    check-cast p1, Landroidx/media3/common/TrackSelectionParameters;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    .line 1013
    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1024
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1027
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1031
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1033
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iget v3, p1, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    iget-boolean v3, p1, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 1040
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1041
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1059
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1062
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 1066
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1068
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 1075
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1076
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 1121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    .line 1124
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    .line 1125
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_FRAMERATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_VIDEO_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    .line 1127
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    .line 1128
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    .line 1129
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_FRAMERATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MIN_VIDEO_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    .line 1131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    .line 1132
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    .line 1133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 1134
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_MIMETYPES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 1136
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1135
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_VIDEO_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    .line 1137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_LANGUAGES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    new-array v4, v3, [Ljava/lang/String;

    .line 1140
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    .line 1141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_CHANNEL_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    .line 1142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_MAX_AUDIO_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    .line 1143
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_AUDIO_MIME_TYPES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    new-array v4, v3, [Ljava/lang/String;

    .line 1145
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_LANGUAGES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    new-array v3, v3, [Ljava/lang/String;

    .line 1148
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_PREFERRED_TEXT_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 1149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_IGNORED_TEXT_SELECTION_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    .line 1150
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 1151
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_LOWEST_BITRATE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    .line 1153
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    .line 1154
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 1155
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionParameters;->FIELD_DISABLED_TRACK_TYPE:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1156
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
