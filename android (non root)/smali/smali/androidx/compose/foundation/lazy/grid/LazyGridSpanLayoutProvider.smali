.class public final Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
.super Ljava/lang/Object;
.source "LazyGridSpanLayoutProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridSpanLayoutProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridSpanLayoutProvider.kt\nandroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0003()*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001e\u001a\u00020\u0006H\u0002\u00f8\u0001\u0000J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0006J\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006J\u0008\u0010$\u001a\u00020%H\u0002J\u0016\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u0006R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "",
        "gridContent",
        "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V",
        "bucketSize",
        "",
        "getBucketSize",
        "()I",
        "buckets",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
        "Lkotlin/collections/ArrayList;",
        "cachedBucket",
        "",
        "cachedBucketIndex",
        "lastLineIndex",
        "lastLineStartItemIndex",
        "lastLineStartKnownSpan",
        "previousDefaultSpans",
        "",
        "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
        "value",
        "slotsPerLine",
        "getSlotsPerLine",
        "setSlotsPerLine",
        "(I)V",
        "totalSize",
        "getTotalSize",
        "getDefaultSpans",
        "currentSlotsPerLine",
        "getLineConfiguration",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;",
        "lineIndex",
        "getLineIndexOfItem",
        "itemIndex",
        "invalidateCache",
        "",
        "spanOf",
        "maxSpan",
        "Bucket",
        "LazyGridItemSpanScopeImpl",
        "LineConfiguration",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final buckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedBucket:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedBucketIndex:I

.field private final gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

.field private lastLineIndex:I

.field private lastLineStartItemIndex:I

.field private lastLineStartKnownSpan:I

.field private previousDefaultSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation
.end field

.field private slotsPerLine:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V
    .locals 4

    const-string v0, "gridContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    return-void
.end method

.method private final getBucketSize()I
    .locals 4

    .line 35
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final getDefaultSpans(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    goto :goto_1

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->box-impl(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private final invalidateCache()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 226
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 231
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 75
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getHasCustomSpans$foundation_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    mul-int/2addr p1, v0

    .line 78
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 80
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 81
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 80
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getDefaultSpans(I)Ljava/util/List;

    move-result-object p0

    .line 78
    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    return-object v0

    .line 85
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    div-int v0, p1, v0

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemIndex()I

    move-result v4

    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemKnownSpan()I

    move-result v5

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    if-gt v2, v6, :cond_1

    if-gt v6, p1, :cond_1

    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    move v2, v6

    goto :goto_0

    :cond_1
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    if-ne v0, v6, :cond_2

    sub-int v6, p1, v2

    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 101
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v2, p1

    move v5, v1

    .line 106
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v6

    rem-int v6, v2, v6

    if-nez v6, :cond_3

    .line 107
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v6

    sub-int v7, p1, v2

    const/4 v8, 0x2

    if-gt v8, v7, :cond_3

    if-ge v7, v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const-string v0, "Check failed."

    if-gt v2, p1, :cond_e

    :cond_5
    :goto_2
    if-ge v2, p1, :cond_b

    .line 115
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v6

    if-ge v4, v6, :cond_b

    if-eqz v3, :cond_6

    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v6, v1

    :goto_3
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v6, v7, :cond_9

    .line 121
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v7

    if-ge v4, v7, :cond_9

    if-nez v5, :cond_7

    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    sub-int/2addr v7, v6

    .line 123
    invoke-virtual {p0, v4, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result v7

    move v9, v7

    move v7, v5

    move v5, v9

    goto :goto_4

    :cond_7
    move v7, v1

    :goto_4
    add-int/2addr v6, v5

    iget v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-le v6, v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_3

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 136
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v6

    rem-int v6, v2, v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 137
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v6

    div-int v6, v2, v6

    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_a

    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 140
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-direct {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iput v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    move v0, v1

    move v2, v4

    :goto_6
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v0, v3, :cond_d

    .line 152
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v3

    if-ge v2, v3, :cond_d

    if-nez v5, :cond_c

    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    sub-int/2addr v3, v0

    .line 154
    invoke-virtual {p0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result v3

    move v9, v5

    move v5, v3

    move v3, v9

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_7
    add-int/2addr v0, v5

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-gt v0, v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    .line 161
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->box-impl(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    goto :goto_6

    .line 164
    :cond_d
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    invoke-direct {p0, v4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    return-object p0

    .line 113
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLineIndexOfItem(I)I
    .locals 9

    .line 171
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    const-string v2, "Failed requirement."

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 175
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getHasCustomSpans$foundation_release()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 176
    div-int/2addr p1, p0

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 179
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;-><init>(I)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result v0

    const/4 v3, 0x2

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-int v0, v0

    sub-int/2addr v0, v3

    .line 182
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemIndex()I

    move-result v0

    if-gt v0, p1, :cond_9

    move v2, v1

    :goto_1
    if-ge v0, p1, :cond_7

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    sub-int/2addr v6, v2

    .line 188
    invoke-virtual {p0, v0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result v0

    add-int/2addr v2, v0

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v2, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v2, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    .line 199
    :goto_2
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    rem-int v0, v4, v0

    if-nez v0, :cond_6

    .line 200
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    div-int v0, v4, v0

    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 202
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    if-lez v2, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    sub-int v7, v5, v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v1, v3, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    sub-int/2addr v0, v2

    .line 206
    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result p1

    add-int/2addr v2, p1

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-le v2, p0, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    return v4

    .line 185
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSlotsPerLine()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    return p0
.end method

.method public final getTotalSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 63
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->getSize()I

    move-result p0

    return p0
.end method

.method public final setSlotsPerLine(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 70
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->invalidateCache()V

    :cond_0
    return-void
.end method

.method public final spanOf(II)I
    .locals 1

    .line 214
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 215
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->setMaxCurrentLineSpan(I)V

    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 216
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->setMaxLineSpan(I)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 218
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result p2

    sub-int/2addr p1, p2

    .line 220
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->getSpan()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    move-result-wide p0

    .line 221
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    move-result p0

    return p0
.end method
