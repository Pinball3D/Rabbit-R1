.class Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "ExponentialWeightedAverageTimeToFirstByteEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->size()I

    move-result p1

    iget p0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;->maxSize:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
