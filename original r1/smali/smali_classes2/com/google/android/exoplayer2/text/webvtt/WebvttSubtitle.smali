.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final cueInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cueTimesUs:[J

.field private final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 42
    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->endTimeUs:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 45
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method static synthetic lambda$getCues$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;)I
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v3, 0x2

    .line 72
    aget-wide v6, v4, v5

    cmp-long v6, v6, p1

    if-gtz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    .line 73
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    .line 74
    iget-object v5, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    iget v5, v5, Lcom/google/android/exoplayer2/text/Cue;->line:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue;->buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    rsub-int/lit8 p1, v2, -0x1

    int-to-float p1, p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getEventTime(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 62
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 63
    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 64
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 57
    array-length p0, p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 52
    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
