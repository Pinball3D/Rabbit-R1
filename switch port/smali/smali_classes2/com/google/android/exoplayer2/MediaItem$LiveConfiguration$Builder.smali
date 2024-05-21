.class public final Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
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

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 2

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1102
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1103
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1104
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1105
    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1084
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1084
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1084
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .locals 2

    .line 1084
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F
    .locals 0

    .line 1084
    iget p0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F
    .locals 0

    .line 1084
    iget p0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .locals 2

    .line 1171
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-object p0
.end method

.method public setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-object p0
.end method

.method public setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-object p0
.end method

.method public setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return-object p0
.end method

.method public setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-object p0
.end method
