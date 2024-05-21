.class public final Lcom/google/android/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

.field private static final FIELD_WINDOW_INDEX:Ljava/lang/String;


# instance fields
.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field public isPlaceholder:Z

.field public positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method public static synthetic $r8$lambda$cb0Ll1d1tnVYwhQwGd9j2fWlJfI(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 895
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 896
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    const/4 v0, 0x2

    .line 897
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    const/4 v0, 0x3

    .line 898
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    const/4 v0, 0x4

    .line 899
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    .line 933
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 12

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    const/4 v1, 0x0

    .line 936
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 937
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 938
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    .line 939
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    .line 940
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 943
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    goto :goto_0

    .line 944
    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :goto_0
    move-object v10, p0

    .line 946
    new-instance p0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    .line 947
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 870
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    .line 871
    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 872
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 877
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAdCountInAdGroup(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 800
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    return p0
.end method

.method public getAdDurationUs(II)J
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 812
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 813
    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide p0, p0, p2

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method

.method public getAdGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 706
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    return p0
.end method

.method public getAdGroupIndexAfterPositionUs(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 789
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result p0

    return p0
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 778
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p0

    return p0
.end method

.method public getAdGroupTimeUs(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 726
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    return-wide p0
.end method

.method public getAdResumePositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 837
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    return-wide v0
.end method

.method public getAdState(II)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 826
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 827
    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 828
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget p0, p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAdsId()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 701
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    return-object p0
.end method

.method public getContentResumeOffsetUs(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 859
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    return-wide p0
.end method

.method public getDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 672
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getFirstAdIndexToPlay(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result p0

    return p0
.end method

.method public getNextAdIndexToPlay(II)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 752
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result p0

    return p0
.end method

.method public getPositionInWindowMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 686
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public getRemovedAdGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 714
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    return p0
.end method

.method public hasPlayedAdGroup(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 764
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    .line 884
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public isServerSideInsertedAdGroup(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 848
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 10

    .line 622
    sget-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iput-object p8, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 909
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    .line 911
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    .line 914
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    .line 917
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    .line 920
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 922
    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 923
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-object v0
.end method
