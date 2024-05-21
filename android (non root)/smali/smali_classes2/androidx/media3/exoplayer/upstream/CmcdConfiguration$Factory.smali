.class public interface abstract Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;->DEFAULT:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    return-void
.end method

.method public static synthetic lambda$static$0(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .locals 3

    .line 124
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 128
    :goto_0
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory$1;

    invoke-direct {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory$1;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;)V

    return-object v0
.end method


# virtual methods
.method public abstract createCmcdConfiguration(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
.end method
