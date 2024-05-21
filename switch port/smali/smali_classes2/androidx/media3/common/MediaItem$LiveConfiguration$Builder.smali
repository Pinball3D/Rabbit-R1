.class public final Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$LiveConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxOffsetMs:J

.field private maxPlaybackSpeed:F

.field private minOffsetMs:J

.field private minPlaybackSpeed:F

.field private targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 2

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1289
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1290
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1291
    iget v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1292
    iget p1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 1271
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1271
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1271
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1271
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .locals 0

    .line 1271
    iget p0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return p0
.end method

.method static synthetic access$2400(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .locals 0

    .line 1271
    iget p0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 2

    .line 1358
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public setMaxOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-object p0
.end method

.method public setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-object p0
.end method

.method public setMinOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-object p0
.end method

.method public setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return-object p0
.end method

.method public setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-object p0
.end method
