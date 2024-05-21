.class final Lcom/google/zxing/oned/rss/Pair;
.super Lcom/google/zxing/oned/rss/DataCharacter;
.source "Pair.java"


# instance fields
.field private count:I

.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;


# direct methods
.method constructor <init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    iput-object p3, p0, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/oned/rss/Pair;->count:I

    return p0
.end method

.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    return-object p0
.end method

.method incrementCount()V
    .locals 1

    iget v0, p0, Lcom/google/zxing/oned/rss/Pair;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/rss/Pair;->count:I

    return-void
.end method
