.class public final Lcom/google/android/exoplayer2/Timeline$Window;
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
    name = "Window"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            ">;"
        }
    .end annotation
.end field

.field private static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field private static final FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_IS_DYNAMIC:Ljava/lang/String;

.field private static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_IS_SEEKABLE:Ljava/lang/String;

.field private static final FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

.field private static final FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

.field private static final FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

.field private static final PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$DwPhLG2u8bNdNcFO2XKtY2D8gVM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    const/4 v0, 0x1

    .line 425
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    const/4 v0, 0x2

    .line 426
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 427
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 429
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 430
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 431
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    const/4 v0, 0x7

    .line 432
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 433
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    const/16 v0, 0x9

    .line 434
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    const/16 v0, 0xa

    .line 435
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    const/16 v0, 0xb

    .line 436
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    const/16 v0, 0xc

    .line 437
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    const/16 v0, 0xd

    .line 438
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 500
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    :goto_0
    move-object v4, v1

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 508
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 510
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    const/4 v5, 0x0

    .line 513
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    .line 514
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    .line 515
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 519
    sget-object v14, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v14, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v14, v1

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 521
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v15, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    move-wide/from16 v23, v6

    const-wide/16 v5, 0x0

    .line 522
    invoke-virtual {v0, v15, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    .line 523
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    const/4 v3, 0x0

    .line 524
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    .line 525
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 527
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 529
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    move-object v2, v0

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    const/4 v5, 0x0

    move-wide/from16 v6, v23

    .line 530
    invoke-virtual/range {v2 .. v22}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object v0
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

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 381
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 382
    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 383
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 384
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 385
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 361
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 315
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 330
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 343
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 404
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v0, :cond_1

    goto :goto_1

    .line 406
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public isLive()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 368
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-eqz v1, :cond_1

    .line 288
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_1

    .line 289
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    move-wide v3, p4

    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    move-wide v3, p6

    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    move-wide v3, p8

    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    iput-object v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-wide/from16 v2, p13

    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    move-wide/from16 v2, p15

    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move/from16 v2, p17

    iput v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v2, p18

    iput v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 v2, p19

    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 451
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    .line 463
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_5

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    .line 466
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    .line 471
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz v1, :cond_7

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 474
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_8

    sget-object v7, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    .line 477
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-eqz v1, :cond_a

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-eqz v1, :cond_b

    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    .line 486
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p0, v1, v5

    if-eqz p0, :cond_c

    sget-object p0, Lcom/google/android/exoplayer2/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 489
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_c
    return-object v0
.end method
