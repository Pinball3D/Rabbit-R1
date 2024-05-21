.class public final Landroidx/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/AdPlaybackState$AdGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_COUNT:Ljava/lang/String;

.field private static final FIELD_DURATIONS_US:Ljava/lang/String;

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

.field private static final FIELD_ORIGINAL_COUNT:Ljava/lang/String;

.field private static final FIELD_STATES:Ljava/lang/String;

.field private static final FIELD_TIME_US:Ljava/lang/String;

.field private static final FIELD_URIS:Ljava/lang/String;


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final isServerSideInserted:Z

.field public final originalCount:I

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$R9EosVyuwX_oBL-rlPt3CuC-zZs(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    const/4 v0, 0x1

    .line 467
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    const/4 v0, 0x2

    .line 468
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 469
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 470
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    const/4 v0, 0x5

    .line 471
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    const/4 v0, 0x6

    .line 472
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    const/4 v0, 0x7

    .line 473
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 493
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 95
    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JII[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iput p3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iput p4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iput-object p6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iput-object p7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iput-wide p8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iput-boolean p10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return-void
.end method

.method synthetic constructor <init>(JII[I[Landroid/net/Uri;[JJZLandroidx/media3/common/AdPlaybackState$1;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/common/AdPlaybackState$AdGroup;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result p0

    return p0
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .locals 3

    .line 457
    array-length v0, p0

    .line 458
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 459
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 460
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .locals 2

    .line 448
    array-length v0, p0

    .line 449
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 450
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 451
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 13

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 498
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 499
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 500
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 501
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 504
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    sget-object v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 505
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 506
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 507
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 508
    new-instance p0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    new-array v1, v7, [I

    :cond_0
    move-object v8, v1

    if-nez v0, :cond_1

    new-array v0, v7, [Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-array v1, v7, [Landroid/net/Uri;

    .line 513
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    :goto_0
    if-nez v6, :cond_2

    new-array v1, v7, [J

    move-object v12, v1

    goto :goto_1

    :cond_2
    move-object v12, v6

    :goto_1
    move-object v1, p0

    move-object v6, v8

    move-object v7, v0

    move-object v8, v12

    .line 514
    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object p0
.end method

.method private isLivePostrollPlaceholder()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 188
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 191
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 192
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 193
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .locals 1

    const/4 v0, -0x1

    .line 131
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result p0

    return p0
.end method

.method public getNextAdIndexToPlay(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 144
    array-length v2, v1

    if-ge p1, v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v2, :cond_1

    .line 145
    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public hasUnplayedAds()Z
    .locals 4

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 168
    aget v3, v3, v1

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 203
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 204
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 205
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public shouldPlayAdGroup()Z
    .locals 2

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 480
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 484
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 483
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 487
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    iget-boolean p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 488
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 228
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v6

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 229
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v8

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 230
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/net/Uri;

    .line 231
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 11

    .line 305
    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 306
    array-length v0, v1

    invoke-static {p1, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object p1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 307
    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 308
    array-length v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    :cond_1
    :goto_0
    move-object v7, p1

    .line 310
    new-instance p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    .line 277
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v4, v2, 0x1

    .line 278
    invoke-static {v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v12

    .line 279
    aget v3, v12, v2

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v1, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 284
    array-length v4, v3

    array-length v5, v12

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 286
    :cond_4
    array-length v4, v12

    invoke-static {v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v3

    :goto_2
    move-object v14, v3

    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 289
    array-length v4, v3

    array-length v5, v12

    if-ne v4, v5, :cond_5

    goto :goto_3

    :cond_5
    array-length v4, v12

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    :goto_3
    move-object v13, v3

    .line 290
    aput v1, v12, v2

    .line 291
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v10, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v7, v1

    move-wide v15, v2

    move/from16 v17, v0

    invoke-direct/range {v7 .. v17}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v1
.end method

.method public withAdUri(Landroid/net/Uri;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 13

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v1, p2, 0x1

    .line 248
    invoke-static {v0, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v7

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 250
    array-length v1, v0

    array-length v2, v7

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    array-length v1, v7

    invoke-static {v0, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v0

    :goto_0
    move-object v9, v0

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 253
    array-length v1, v7

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/net/Uri;

    .line 254
    aput-object p1, v8, p2

    const/4 p1, 0x1

    .line 255
    aput p1, v7, p2

    .line 256
    new-instance p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public withAllAdsReset()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 426
    array-length v4, v0

    .line 427
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_4

    .line 429
    aget v2, v6, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 432
    aget-object v2, v2, v1

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    aput v2, v6, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_4
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withAllAdsSkipped()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 389
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const/4 v6, 0x0

    iget v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    new-array v8, v2, [I

    new-array v9, v2, [Landroid/net/Uri;

    new-array v10, v2, [J

    iget-wide v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 399
    array-length v6, v0

    .line 400
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    :goto_0
    if-ge v2, v6, :cond_3

    .line 402
    aget v0, v8, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    .line 403
    aput v0, v8, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    :cond_3
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withContentResumeOffsetUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    .line 324
    new-instance v11, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, v11

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v11
.end method

.method public withIsServerSideInserted(Z)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    .line 338
    new-instance v11, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    move-object v0, v11

    move v10, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v11
.end method

.method public withLastAdRemoved()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 13

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 364
    array-length v1, v0

    add-int/lit8 v5, v1, -0x1

    .line 365
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 366
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 368
    array-length v1, v0

    if-le v1, v5, :cond_0

    .line 369
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :cond_0
    move-object v9, v0

    .line 371
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 378
    invoke-static {v9}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v10

    iget-boolean v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withOriginalAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    .line 351
    new-instance v11, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, v11

    move v4, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v11
.end method

.method public withTimeUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 12

    .line 214
    new-instance v11, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, v11

    move-wide v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v11
.end method
