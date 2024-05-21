.class public Landroidx/media3/exoplayer/upstream/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 45
    new-instance v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 139
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    .line 147
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;)I
    .locals 0

    .line 44
    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    iget p1, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$static$1(Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;)I
    .locals 0

    .line 46
    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    iget p1, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addSample(IF)V
    .locals 3

    .line 89
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->ensureSortedByIndex()V

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    .line 92
    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;-><init>(Landroidx/media3/exoplayer/upstream/SlidingPercentile$1;)V

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    .line 93
    iput v1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    .line 94
    iput p1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    .line 95
    iput p2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    :cond_1
    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 102
    iget v1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    if-gt v1, p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    .line 103
    iget v1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    .line 106
    aput-object p2, v0, p1

    goto :goto_1

    .line 109
    :cond_2
    iget v0, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 4

    .line 122
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->ensureSortedByValue()V

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 127
    iget v3, v2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 129
    iget p0, v2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    :goto_1
    return p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    return-void
.end method
