.class final Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedSampleMetadata"
.end annotation


# instance fields
.field public final drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

.field public final format:Landroidx/media3/common/Format;


# direct methods
.method private constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V
    .locals 0

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;Landroidx/media3/exoplayer/source/SampleQueue$1;)V
    .locals 0

    .line 1083
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V

    return-void
.end method
