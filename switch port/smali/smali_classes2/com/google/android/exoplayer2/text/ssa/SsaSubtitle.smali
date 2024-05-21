.class final Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;
.super Ljava/lang/Object;
.source "SsaSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final cueTimesUs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cues:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cues:Ljava/util/List;

    .line 66
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
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

    .line 54
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 56
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
