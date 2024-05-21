.class public final Landroidx/media3/common/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private albumArtist:Ljava/lang/CharSequence;

.field private albumTitle:Ljava/lang/CharSequence;

.field private artist:Ljava/lang/CharSequence;

.field private artworkData:[B

.field private artworkDataType:Ljava/lang/Integer;

.field private artworkUri:Landroid/net/Uri;

.field private compilation:Ljava/lang/CharSequence;

.field private composer:Ljava/lang/CharSequence;

.field private conductor:Ljava/lang/CharSequence;

.field private description:Ljava/lang/CharSequence;

.field private discNumber:Ljava/lang/Integer;

.field private displayTitle:Ljava/lang/CharSequence;

.field private extras:Landroid/os/Bundle;

.field private folderType:Ljava/lang/Integer;

.field private genre:Ljava/lang/CharSequence;

.field private isBrowsable:Ljava/lang/Boolean;

.field private isPlayable:Ljava/lang/Boolean;

.field private mediaType:Ljava/lang/Integer;

.field private overallRating:Landroidx/media3/common/Rating;

.field private recordingDay:Ljava/lang/Integer;

.field private recordingMonth:Ljava/lang/Integer;

.field private recordingYear:Ljava/lang/Integer;

.field private releaseDay:Ljava/lang/Integer;

.field private releaseMonth:Ljava/lang/Integer;

.field private releaseYear:Ljava/lang/Integer;

.field private station:Ljava/lang/CharSequence;

.field private subtitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private totalDiscCount:Ljava/lang/Integer;

.field private totalTrackCount:Ljava/lang/Integer;

.field private trackNumber:Ljava/lang/Integer;

.field private userRating:Landroidx/media3/common/Rating;

.field private writer:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 93
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 98
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    .line 99
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    .line 100
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 101
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 103
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 105
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    .line 107
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 108
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 109
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 111
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 112
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 113
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 114
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 117
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 118
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 119
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 121
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    .line 122
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    .line 123
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaMetadata$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/media3/common/MediaMetadata$Builder;)[B
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3300(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/MediaMetadata;
    .locals 2

    .line 578
    new-instance v0, Landroidx/media3/common/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;Landroidx/media3/common/MediaMetadata$1;)V

    return-object v0
.end method

.method public maybeSetArtworkData([BI)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    :cond_1
    return-object p0
.end method

.method public populate(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 473
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 476
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 479
    :cond_2
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 482
    :cond_3
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 483
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 485
    :cond_4
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 486
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 488
    :cond_5
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 491
    :cond_6
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 492
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 494
    :cond_7
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 497
    :cond_8
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 500
    :cond_9
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_a

    .line 501
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 503
    :cond_a
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 504
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 506
    :cond_b
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 507
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 509
    :cond_c
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 510
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 512
    :cond_d
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 513
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 515
    :cond_e
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 516
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 518
    :cond_f
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 519
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 521
    :cond_10
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 522
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 524
    :cond_11
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 525
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 527
    :cond_12
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 528
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 530
    :cond_13
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 531
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 533
    :cond_14
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 534
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 536
    :cond_15
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    .line 537
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 539
    :cond_16
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 540
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 542
    :cond_17
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_18

    .line 543
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 545
    :cond_18
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 546
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 548
    :cond_19
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 549
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 551
    :cond_1a
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 552
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 554
    :cond_1b
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 555
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 557
    :cond_1c
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    .line 558
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 560
    :cond_1d
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    .line 561
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 563
    :cond_1e
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 564
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 566
    :cond_1f
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 567
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 569
    :cond_20
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_21

    .line 570
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_21
    return-object p0
.end method

.method public populateFromMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 435
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 436
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    .line 437
    invoke-interface {v1, p0}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public populateFromMetadata(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata;",
            ">;)",
            "Landroidx/media3/common/MediaMetadata$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 455
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 456
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Metadata;

    move v3, v0

    .line 457
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 458
    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v4

    .line 459
    invoke-interface {v4, p0}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtworkData([B)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iput-object p2, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setCompilation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setComposer(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConductor(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDiscNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDisplayTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGenre(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method public setRecordingDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseDay(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseMonth(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStation(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTotalDiscCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTotalTrackCount(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackNumber(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method public setWriter(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method
