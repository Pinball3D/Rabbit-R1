.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private durationUs:J

.field private isPlaceholder:Z

.field private uid:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;)V
    .locals 2

    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1798
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    .line 1799
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 1800
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1801
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .locals 0

    .line 1778
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 1793
    sget-object p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    return-void
.end method

.method static synthetic access$6500(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1778
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)J
    .locals 2

    .line 1778
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$6700(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 0

    .line 1778
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Z
    .locals 0

    .line 1778
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    .locals 2

    .line 1861
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public setAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object p0
.end method

.method public setDurationUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1827
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    return-object p0
.end method

.method public setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    return-object p0
.end method

.method public setUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    return-object p0
.end method
