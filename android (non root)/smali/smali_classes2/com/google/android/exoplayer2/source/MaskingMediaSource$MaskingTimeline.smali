.class final Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MaskingMediaSource;
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

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-object p0
.end method

.method public static createWithPlaceholderTimeline(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;
    .locals 3

    .line 256
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    sget-object p0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;
    .locals 1

    .line 274
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;
    .locals 2

    .line 292
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    sget-object v1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    .line 315
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 307
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 308
    iput-object p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 324
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 298
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 299
    sget-object p0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
