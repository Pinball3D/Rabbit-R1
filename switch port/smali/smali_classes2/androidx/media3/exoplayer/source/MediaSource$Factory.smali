.class public interface abstract Landroidx/media3/exoplayer/source/MediaSource$Factory;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final UNSUPPORTED:Landroidx/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-object v0, Landroidx/media3/exoplayer/source/MediaSourceFactory;->UNSUPPORTED:Landroidx/media3/exoplayer/source/MediaSourceFactory;

    sput-object v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;->UNSUPPORTED:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public abstract createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
.end method

.method public abstract getSupportedTypes()[I
.end method

.method public setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public abstract setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
.end method

.method public abstract setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
.end method
