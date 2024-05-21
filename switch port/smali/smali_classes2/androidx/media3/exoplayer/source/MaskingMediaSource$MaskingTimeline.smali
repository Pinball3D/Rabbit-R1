.class final Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaskingTimeline"
.end annotation


# static fields
.field public static final MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;


# instance fields
.field private final replacedInternalPeriodUid:Ljava/lang/Object;

.field private final replacedInternalWindowUid:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-object p0
.end method

.method public static createWithPlaceholderTimeline(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .locals 3

    .line 258
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object p0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createWithRealTimeline(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .locals 1

    .line 276
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cloneWithUpdatedTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .locals 2

    .line 294
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 317
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->timeline:Landroidx/media3/common/Timeline;

    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 318
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    .line 317
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 309
    iget-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 310
    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 326
    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 300
    iget-object p1, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 301
    sget-object p0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
