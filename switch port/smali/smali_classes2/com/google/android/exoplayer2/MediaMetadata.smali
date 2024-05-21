.class public final Lcom/google/android/exoplayer2/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaMetadata$PictureType;,
        Lcom/google/android/exoplayer2/MediaMetadata$FolderType;,
        Lcom/google/android/exoplayer2/MediaMetadata$MediaType;,
        Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

.field private static final FIELD_ALBUM_ARTIST:Ljava/lang/String;

.field private static final FIELD_ALBUM_TITLE:Ljava/lang/String;

.field private static final FIELD_ARTIST:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

.field private static final FIELD_ARTWORK_URI:Ljava/lang/String;

.field private static final FIELD_COMPILATION:Ljava/lang/String;

.field private static final FIELD_COMPOSER:Ljava/lang/String;

.field private static final FIELD_CONDUCTOR:Ljava/lang/String;

.field private static final FIELD_DESCRIPTION:Ljava/lang/String;

.field private static final FIELD_DISC_NUMBER:Ljava/lang/String;

.field private static final FIELD_DISPLAY_TITLE:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_FOLDER_TYPE:Ljava/lang/String;

.field private static final FIELD_GENRE:Ljava/lang/String;

.field private static final FIELD_IS_BROWSABLE:Ljava/lang/String;

.field private static final FIELD_IS_PLAYABLE:Ljava/lang/String;

.field private static final FIELD_MEDIA_TYPE:Ljava/lang/String;

.field private static final FIELD_OVERALL_RATING:Ljava/lang/String;

.field private static final FIELD_RECORDING_DAY:Ljava/lang/String;

.field private static final FIELD_RECORDING_MONTH:Ljava/lang/String;

.field private static final FIELD_RECORDING_YEAR:Ljava/lang/String;

.field private static final FIELD_RELEASE_DAY:Ljava/lang/String;

.field private static final FIELD_RELEASE_MONTH:Ljava/lang/String;

.field private static final FIELD_RELEASE_YEAR:Ljava/lang/String;

.field private static final FIELD_STATION:Ljava/lang/String;

.field private static final FIELD_SUBTITLE:Ljava/lang/String;

.field private static final FIELD_TITLE:Ljava/lang/String;

.field private static final FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

.field private static final FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

.field private static final FIELD_TRACK_NUMBER:Ljava/lang/String;

.field private static final FIELD_USER_RATING:Ljava/lang/String;

.field private static final FIELD_WRITER:Ljava/lang/String;

.field public static final FOLDER_TYPE_ALBUMS:I = 0x2

.field public static final FOLDER_TYPE_ARTISTS:I = 0x3

.field public static final FOLDER_TYPE_GENRES:I = 0x4

.field public static final FOLDER_TYPE_MIXED:I = 0x0

.field public static final FOLDER_TYPE_NONE:I = -0x1

.field public static final FOLDER_TYPE_PLAYLISTS:I = 0x5

.field public static final FOLDER_TYPE_TITLES:I = 0x1

.field public static final FOLDER_TYPE_YEARS:I = 0x6

.field public static final MEDIA_TYPE_ALBUM:I = 0xa

.field public static final MEDIA_TYPE_ARTIST:I = 0xb

.field public static final MEDIA_TYPE_AUDIO_BOOK:I = 0xf

.field public static final MEDIA_TYPE_AUDIO_BOOK_CHAPTER:I = 0x2

.field public static final MEDIA_TYPE_FOLDER_ALBUMS:I = 0x15

.field public static final MEDIA_TYPE_FOLDER_ARTISTS:I = 0x16

.field public static final MEDIA_TYPE_FOLDER_AUDIO_BOOKS:I = 0x1a

.field public static final MEDIA_TYPE_FOLDER_GENRES:I = 0x17

.field public static final MEDIA_TYPE_FOLDER_MIXED:I = 0x14

.field public static final MEDIA_TYPE_FOLDER_MOVIES:I = 0x23

.field public static final MEDIA_TYPE_FOLDER_NEWS:I = 0x20

.field public static final MEDIA_TYPE_FOLDER_PLAYLISTS:I = 0x18

.field public static final MEDIA_TYPE_FOLDER_PODCASTS:I = 0x1b

.field public static final MEDIA_TYPE_FOLDER_RADIO_STATIONS:I = 0x1f

.field public static final MEDIA_TYPE_FOLDER_TRAILERS:I = 0x22

.field public static final MEDIA_TYPE_FOLDER_TV_CHANNELS:I = 0x1c

.field public static final MEDIA_TYPE_FOLDER_TV_SERIES:I = 0x1d

.field public static final MEDIA_TYPE_FOLDER_TV_SHOWS:I = 0x1e

.field public static final MEDIA_TYPE_FOLDER_VIDEOS:I = 0x21

.field public static final MEDIA_TYPE_FOLDER_YEARS:I = 0x19

.field public static final MEDIA_TYPE_GENRE:I = 0xc

.field public static final MEDIA_TYPE_MIXED:I = 0x0

.field public static final MEDIA_TYPE_MOVIE:I = 0x8

.field public static final MEDIA_TYPE_MUSIC:I = 0x1

.field public static final MEDIA_TYPE_NEWS:I = 0x5

.field public static final MEDIA_TYPE_PLAYLIST:I = 0xd

.field public static final MEDIA_TYPE_PODCAST:I = 0x10

.field public static final MEDIA_TYPE_PODCAST_EPISODE:I = 0x3

.field public static final MEDIA_TYPE_RADIO_STATION:I = 0x4

.field public static final MEDIA_TYPE_TRAILER:I = 0x7

.field public static final MEDIA_TYPE_TV_CHANNEL:I = 0x11

.field public static final MEDIA_TYPE_TV_SEASON:I = 0x13

.field public static final MEDIA_TYPE_TV_SERIES:I = 0x12

.field public static final MEDIA_TYPE_TV_SHOW:I = 0x9

.field public static final MEDIA_TYPE_VIDEO:I = 0x6

.field public static final MEDIA_TYPE_YEAR:I = 0xe

.field public static final PICTURE_TYPE_ARTIST_PERFORMER:I = 0x8

.field public static final PICTURE_TYPE_A_BRIGHT_COLORED_FISH:I = 0x11

.field public static final PICTURE_TYPE_BACK_COVER:I = 0x4

.field public static final PICTURE_TYPE_BAND_ARTIST_LOGO:I = 0x13

.field public static final PICTURE_TYPE_BAND_ORCHESTRA:I = 0xa

.field public static final PICTURE_TYPE_COMPOSER:I = 0xb

.field public static final PICTURE_TYPE_CONDUCTOR:I = 0x9

.field public static final PICTURE_TYPE_DURING_PERFORMANCE:I = 0xf

.field public static final PICTURE_TYPE_DURING_RECORDING:I = 0xe

.field public static final PICTURE_TYPE_FILE_ICON:I = 0x1

.field public static final PICTURE_TYPE_FILE_ICON_OTHER:I = 0x2

.field public static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field public static final PICTURE_TYPE_ILLUSTRATION:I = 0x12

.field public static final PICTURE_TYPE_LEAD_ARTIST_PERFORMER:I = 0x7

.field public static final PICTURE_TYPE_LEAFLET_PAGE:I = 0x5

.field public static final PICTURE_TYPE_LYRICIST:I = 0xc

.field public static final PICTURE_TYPE_MEDIA:I = 0x6

.field public static final PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE:I = 0x10

.field public static final PICTURE_TYPE_OTHER:I = 0x0

.field public static final PICTURE_TYPE_PUBLISHER_STUDIO_LOGO:I = 0x14

.field public static final PICTURE_TYPE_RECORDING_LOCATION:I = 0xd


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final artworkUri:Landroid/net/Uri;

.field public final compilation:Ljava/lang/CharSequence;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final displayTitle:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final folderType:Ljava/lang/Integer;

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final overallRating:Lcom/google/android/exoplayer2/Rating;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final subtitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final userRating:Lcom/google/android/exoplayer2/Rating;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$n4bc9ZFXKwAHBWPswIbYNYyZRds(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 853
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v0, 0x0

    .line 1098
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1099
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1100
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1101
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1102
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1103
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1104
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1106
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1107
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1108
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1109
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1110
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1111
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1112
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1113
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1114
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1115
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1116
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1117
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1118
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1119
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1120
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1121
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1122
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1123
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1124
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1125
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1126
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1127
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1128
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1129
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1130
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 1131
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1239
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .locals 6

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    .line 961
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v1

    .line 962
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    .line 964
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 965
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 966
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    .line 967
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->getFolderTypeFromMediaType(I)I

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 970
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 972
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->getMediaTypeFromFolderType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 975
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 976
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 977
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 978
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 979
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 980
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 981
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 982
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 983
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 984
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 985
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 986
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 987
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 988
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 991
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 992
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    .line 993
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 994
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 995
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 996
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 997
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 998
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 999
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1000
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1001
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1002
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1003
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1004
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1005
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1006
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1008
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 5

    .line 1242
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1244
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1245
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1246
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1247
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1248
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1249
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1250
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1252
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    .line 1253
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1254
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1251
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1256
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1257
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1258
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1259
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1260
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1261
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1262
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1263
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    .line 1265
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1268
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setUserRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    .line 1271
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1272
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1274
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setOverallRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    .line 1277
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1278
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    .line 1280
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1281
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    .line 1283
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1284
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_5
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    .line 1286
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1287
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_6
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    .line 1289
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1290
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_7
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    .line 1292
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1293
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_8
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    .line 1295
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1296
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_9
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    .line 1298
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1299
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_a
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    .line 1301
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1302
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_b
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    .line 1304
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1305
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_c
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    .line 1307
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1308
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_d
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    .line 1310
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1311
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_e
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    .line 1313
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1314
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_f
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    .line 1316
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1317
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1320
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static getFolderTypeFromMediaType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static getMediaTypeFromFolderType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x14

    return p0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x15

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 2

    .line 1013
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

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

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1024
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1025
    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1026
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1027
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1028
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1029
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1030
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1031
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 1032
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 1033
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 1034
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1035
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1036
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1037
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1038
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1039
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1040
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1041
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1042
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1043
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1044
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1045
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1046
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1047
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1048
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1049
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1050
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1051
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1052
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1053
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1054
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1055
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1056
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 1071
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v13, v0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    move-object/from16 v31, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    move-object/from16 v1, v33

    filled-new-array/range {v1 .. v32}, [Ljava/lang/Object;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1155
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v1, :cond_7

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1158
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1161
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1167
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1170
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1173
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1176
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1179
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_f

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    .line 1182
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_10

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    .line 1185
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    .line 1188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    .line 1191
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    .line 1197
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    .line 1200
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    .line 1203
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    .line 1206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    .line 1209
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    .line 1212
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    .line 1215
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    .line 1218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    .line 1221
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    .line 1224
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    .line 1227
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    .line 1230
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_20

    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1233
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_20
    return-object v0
.end method
