.class public final Landroidx/media3/common/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaMetadata$Builder;,
        Landroidx/media3/common/MediaMetadata$PictureType;,
        Landroidx/media3/common/MediaMetadata$FolderType;,
        Landroidx/media3/common/MediaMetadata$MediaType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/MediaMetadata;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_ARTISTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_GENRES:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_MIXED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_NONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_PLAYLISTS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_TITLES:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER_TYPE_YEARS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final overallRating:Landroidx/media3/common/Rating;

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

.field public final userRating:Landroidx/media3/common/Rating;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ec-q2JvXpG5rf68mVuy5gy0CxNI(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 909
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const/4 v0, 0x0

    .line 1160
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1161
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1162
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1163
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1164
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1165
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1166
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1168
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1169
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1170
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1171
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1172
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1173
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1174
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1175
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1176
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1177
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1178
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1179
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1180
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1181
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1182
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1183
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1184
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1185
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1186
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1187
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1188
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1189
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1190
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1191
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1192
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 1193
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1303
    new-instance v0, Landroidx/media3/common/MediaMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 6

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1021
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v1

    .line 1022
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1026
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    .line 1027
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/MediaMetadata;->getFolderTypeFromMediaType(I)I

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 1030
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 1032
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/MediaMetadata;->getMediaTypeFromFolderType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1035
    :cond_5
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1036
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1037
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1038
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1039
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1040
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1041
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1042
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1100(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    .line 1043
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1200(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    .line 1044
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1300(Landroidx/media3/common/MediaMetadata$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 1045
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1046
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1500(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1047
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1048
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1051
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1052
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    .line 1053
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1054
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1055
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1056
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1057
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1058
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1059
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1060
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1061
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1062
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1063
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1064
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1065
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1066
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1068
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3300(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;Landroidx/media3/common/MediaMetadata$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;
    .locals 5

    .line 1307
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1309
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1310
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1311
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1312
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1313
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1314
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1315
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1317
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    .line 1318
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1319
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1316
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1321
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1322
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1323
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1324
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1325
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1326
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1327
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1328
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    .line 1330
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1331
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1333
    sget-object v2, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Rating;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_1
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    .line 1336
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1337
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1339
    sget-object v2, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Rating;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_2
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    .line 1342
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1343
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_3
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    .line 1345
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1346
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_4
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    .line 1348
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1349
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_5
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    .line 1351
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1352
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_6
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    .line 1354
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1355
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_7
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    .line 1357
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1358
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_8
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    .line 1360
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1361
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_9
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    .line 1363
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1364
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_a
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    .line 1366
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1367
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_b
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    .line 1369
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1370
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_c
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    .line 1372
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1373
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_d
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    .line 1375
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1376
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_e
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    .line 1378
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1379
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_f
    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    .line 1381
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1382
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 1385
    :cond_10
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

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
.method public buildUpon()Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    .line 1073
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaMetadata$1;)V

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

    .line 1082
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1085
    :cond_1
    check-cast p1, Landroidx/media3/common/MediaMetadata;

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 1086
    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 1087
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 1088
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 1089
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 1090
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 1091
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 1092
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    .line 1093
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    .line 1094
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 1095
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 1096
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 1097
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 1098
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 1099
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 1100
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 1101
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 1102
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 1103
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 1104
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 1105
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 1106
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 1107
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 1108
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 1109
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 1110
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 1111
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 1112
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 1113
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 1114
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 1115
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 1116
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 1117
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    iget-object v9, v0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    iget-object v10, v0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 1133
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v12, v0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v13, v0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v14, v0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v15, v0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    move-object/from16 v33, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    move-object/from16 v31, v1

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    move-object/from16 v32, v0

    move-object/from16 v1, v33

    filled-new-array/range {v1 .. v32}, [Ljava/lang/Object;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    .line 1201
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    .line 1204
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    .line 1207
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    .line 1210
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    .line 1213
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    .line 1216
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    .line 1219
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-eqz v1, :cond_7

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    .line 1222
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_7
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    .line 1228
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    .line 1231
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    .line 1234
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    .line 1237
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    .line 1243
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    if-eqz v1, :cond_f

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    .line 1246
    invoke-virtual {v1}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    if-eqz v1, :cond_10

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    .line 1249
    invoke-virtual {v1}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    .line 1252
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    .line 1255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    .line 1258
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    .line 1261
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    .line 1264
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    .line 1267
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    .line 1270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    .line 1273
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    .line 1276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    .line 1279
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    .line 1282
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    .line 1285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1c
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    .line 1288
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    .line 1291
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    .line 1294
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_20

    sget-object v1, Landroidx/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    .line 1297
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_20
    return-object v0
.end method
