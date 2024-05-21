.class public final Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
.super Ljava/io/IOException;
.source "MediaDrmCallbackException.java"


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uriAfterRedirects:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    iput-wide p4, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;->bytesLoaded:J

    return-void
.end method
