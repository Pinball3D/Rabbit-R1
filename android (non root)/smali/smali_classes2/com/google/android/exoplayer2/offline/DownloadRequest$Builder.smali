.class public Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customCacheKey:Ljava/lang/String;

.field private data:[B

.field private final id:Ljava/lang/String;

.field private keySetId:[B

.field private mimeType:Ljava/lang/String;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 10

    .line 94
    new-instance v9, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->streamKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->keySetId:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->data:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLcom/google/android/exoplayer2/offline/DownloadRequest$1;)V

    return-object v9
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setData([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->data:[B

    return-object p0
.end method

.method public setKeySetId([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->keySetId:[B

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->streamKeys:Ljava/util/List;

    return-object p0
.end method
