.class public Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
.super Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

.field public static final GROUP_INDEX_AUDIO:I = 0x1

.field public static final GROUP_INDEX_SUBTITLE:I = 0x2

.field public static final GROUP_INDEX_VARIANT:I


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final closedCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPlaylistUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionKeyDrmInitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final variableDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 34
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    const-string v1, ""

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2, p10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 210
    invoke-static {p3, p4, p5, p6, p7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 209
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    .line 211
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 212
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->videos:Ljava/util/List;

    .line 213
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 214
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 215
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->closedCaptions:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p9, :cond_0

    .line 218
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 219
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    .line 220
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    return-void
.end method

.method private static addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 289
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 308
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 309
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move v4, v1

    .line 310
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 311
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 312
    iget v6, v5, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v6, p1, :cond_0

    iget v5, v5, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-ne v5, v2, :cond_0

    .line 313
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static createSingleVariantMultivariantPlaylist(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .locals 13

    .line 250
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->createMediaPlaylistVariantUrl(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 251
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    const-string v1, ""

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object p0
.end method

.method private static getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 273
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 275
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 280
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 281
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 282
    invoke-static {p4, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;"
        }
    .end annotation

    .line 225
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->tags:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    const/4 v3, 0x0

    .line 228
    invoke-static {v0, v3, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    const/4 v5, 0x1

    .line 231
    invoke-static {v0, v5, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    const/4 v6, 0x2

    .line 232
    invoke-static {v0, v6, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p0

    return-object p0
.end method
