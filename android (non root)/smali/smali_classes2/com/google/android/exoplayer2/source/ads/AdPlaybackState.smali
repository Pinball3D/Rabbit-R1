.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdState;,
        Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    }
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I

.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUPS:Ljava/lang/String;

.field private static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field private static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private static final REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field private final adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method public static synthetic $r8$lambda$v7MSQh9nkbSNgVVbdfE7aSUxQOQ(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 547
    new-instance v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    sput-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 555
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const/4 v0, 0x1

    .line 1105
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1106
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1107
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1108
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    .line 1144
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8

    .line 590
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->createEmptyAdGroups([J)[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 588
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 605
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iput p7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    return-void
.end method

.method private static createEmptyAdGroups([J)[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 6

    .line 1168
    array-length v0, p0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1170
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-wide v4, p0, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static fromAdPlaybackState(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 18

    move-object/from16 v0, p1

    .line 988
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr v1, v2

    new-array v4, v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 991
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v3, v3, v2

    .line 992
    new-instance v17, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v8, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget v9, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v10, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v10, v10

    .line 997
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v11, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v11, v11

    .line 998
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [Landroid/net/Uri;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v12, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v12, v12

    .line 999
    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    iget-wide v13, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v15, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    const/16 v16, 0x0

    move-object/from16 v5, v17

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZLcom/google/android/exoplayer2/source/ads/AdPlaybackState$1;)V

    aput-object v17, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 11

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    .line 1147
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-object v5, v0

    goto :goto_1

    .line 1152
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1153
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1154
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_1
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1157
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 1158
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    .line 1159
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 1160
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    .line 1161
    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 1162
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1163
    new-instance p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p0
.end method

.method private isPositionBeforeAdGroup(JJI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1095
    :cond_0
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p0, v4, v0

    const/4 p5, 0x1

    if-nez p0, :cond_3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p3, v0

    if-eqz p0, :cond_1

    cmp-long p0, p1, p3

    if-gez p0, :cond_2

    :cond_1
    move v3, p5

    :cond_2
    return v3

    :cond_3
    cmp-long p0, p1, v4

    if-gez p0, :cond_4

    move v3, p5

    :cond_4
    return v3
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

    .line 1016
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1019
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1020
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1025
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

.method public getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->REMOVED_AD_GROUP:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    sub-int/2addr p1, v0

    .line 614
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    :goto_0
    iget p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge p3, p4, :cond_3

    .line 659
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p4, v4, v0

    if-eqz p4, :cond_1

    .line 660
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long p4, v4, p1

    if-lez p4, :cond_2

    .line 661
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge p3, p0, :cond_4

    move v3, p3

    :cond_4
    :goto_1
    return v3
.end method

.method public getAdGroupIndexForPositionUs(JJ)I
    .locals 7

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    .line 633
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isPositionBeforeAdGroup(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 636
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1035
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isAdInErrorState(II)Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 673
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 674
    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-lt p2, p1, :cond_1

    goto :goto_0

    .line 677
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget p0, p0, p2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .line 1119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1121
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1122
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1127
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    .line 1128
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 1130
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    .line 1131
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 1133
    iget v1, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    .line 1134
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdPlaybackState(adsId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1043
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    .line 1044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 1045
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    .line 1046
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1047
    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    .line 1048
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1049
    aget-object v3, v3, v2

    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    .line 1050
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1051
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    .line 1052
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1053
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    .line 1070
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    .line 1058
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    .line 1064
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    .line 1067
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    .line 1061
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    .line 1055
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    .line 1073
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1074
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 1075
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1076
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    .line 1077
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1080
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 1081
    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    .line 1082
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1085
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 729
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 731
    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v0, p2, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 734
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 735
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 736
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public varargs withAdDurationsUs(I[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 858
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 859
    aget-object v0, v3, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 860
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 10

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 841
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 842
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v1, v0, :cond_1

    .line 844
    aget-object v0, v4, v1

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 846
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withAdGroupTimeUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 692
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 693
    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withTimeUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 694
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withAdLoadError(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 815
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 816
    aget-object v0, v3, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 817
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withAdResumePositionUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 873
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withAvailableAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 1

    .line 770
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAvailableAdUri(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public withAvailableAdUri(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 751
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 752
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, v3, p1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 753
    aget-object v0, v3, p1

    invoke-virtual {v0, p3, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdUri(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 754
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withContentDurationUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 884
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v0

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withContentResumeOffsetUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 922
    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 925
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 926
    aget-object v0, v3, p1

    .line 927
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withContentResumeOffsetUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 928
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withIsServerSideInserted(IZ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 957
    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 960
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 961
    aget-object v0, v3, p1

    .line 962
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withIsServerSideInserted(Z)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 963
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withLastAdRemoved(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 801
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 802
    aget-object v0, v3, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withLastAdRemoved()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    aput-object v0, v3, p1

    .line 803
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withNewAdGroup(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    .line 709
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 710
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    add-int/lit8 p2, p1, 0x1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 711
    array-length p3, p3

    sub-int/2addr p3, p1

    invoke-static {v3, p1, v3, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    aput-object v0, v3, p1

    .line 718
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withOriginalAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 940
    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 943
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 944
    aget-object v0, v3, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withOriginalAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 945
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withPlayedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 778
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 779
    aget-object v0, v3, p1

    const/4 v1, 0x3

    .line 780
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 781
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withRemovedAdGroupCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 10

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 901
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    sub-int/2addr v0, p1

    .line 902
    new-array v4, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int v3, p1, v3

    .line 903
    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    move-object v2, v0

    move v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withResetAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 974
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 975
    aget-object v0, v3, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAllAdsReset()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    aput-object v0, v3, p1

    .line 976
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withSkippedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 790
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 791
    aget-object v0, v3, p1

    const/4 v1, 0x2

    .line 792
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p2

    aput-object p2, v3, p1

    .line 793
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method

.method public withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 828
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 829
    aget-object v0, v3, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->withAllAdsSkipped()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    aput-object v0, v3, p1

    .line 830
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p1
.end method
