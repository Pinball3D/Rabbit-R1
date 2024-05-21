.class public final Landroidx/media3/common/SimpleBasePlayer$PeriodData;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PeriodData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;
    }
.end annotation


# instance fields
.field public final adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field public final durationUs:J

.field public final isPlaceholder:Z

.field public final uid:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)V
    .locals 2

    .line 1880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->access$6500(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1882
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->access$6600(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    .line 1883
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->access$6700(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1884
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->access$6800(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    .line 1772
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData;-><init>(Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;
    .locals 2

    .line 1889
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$PeriodData;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1897
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1900
    :cond_1
    check-cast p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1901
    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1903
    invoke-virtual {v1, v3}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    iget-boolean p1, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1910
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1912
    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    add-int/2addr v1, p0

    return v1
.end method
