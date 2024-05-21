.class final Landroidx/media3/extractor/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:[Landroidx/media3/common/text/Cue;


# direct methods
.method public constructor <init>([Landroidx/media3/common/text/Cue;[J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cues:[Landroidx/media3/common/text/Cue;

    iput-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cues:[Landroidx/media3/common/text/Cue;

    .line 62
    aget-object p2, p2, p1

    sget-object v0, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cues:[Landroidx/media3/common/text/Cue;

    .line 66
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

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
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v2, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 55
    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object p0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 56
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 49
    array-length p0, p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/extractor/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 44
    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
