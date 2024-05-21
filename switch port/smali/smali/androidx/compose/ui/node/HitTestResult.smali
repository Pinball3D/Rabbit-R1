.class public final Landroidx/compose/ui/node/HitTestResult;
.super Ljava/lang/Object;
.source "HitTestResult.kt"

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;,
        Landroidx/compose/ui/node/HitTestResult$SubList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Landroidx/compose/ui/Modifier$Node;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitTestResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,341:1\n1855#2,2:342\n*S KotlinDebug\n*F\n+ 1 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n*L\n195#1:342,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010*\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u000289B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0002J\u0018\u0010\u001a\u001a\u00020\u001bH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0007H\u0096\u0002J\u0006\u0010 \u001a\u00020\u0014J$\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u00142\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00110%J,\u0010&\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020(2\u0006\u0010#\u001a\u00020\u00142\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00110%J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010*\u001a\u00020\u0014H\u0016J\u0016\u0010+\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020(2\u0006\u0010#\u001a\u00020\u0014J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00020-H\u0096\u0002J\u0010\u0010.\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u000e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000200H\u0016J\u0016\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u0002002\u0006\u0010\u001f\u001a\u00020\u0007H\u0016J\u0008\u00101\u001a\u00020\u0011H\u0002J\u001a\u00102\u001a\u00020\u00112\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00110%H\u0086\u0008\u00f8\u0001\u0003J,\u00104\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020(2\u0006\u0010#\u001a\u00020\u00142\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00110%J\u001e\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000f\u0082\u0002\u0016\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/ui/node/HitTestResult;",
        "",
        "Landroidx/compose/ui/Modifier$Node;",
        "()V",
        "distanceFromEdgeAndInLayer",
        "",
        "hitDepth",
        "",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "values",
        "",
        "",
        "[Ljava/lang/Object;",
        "acceptHits",
        "",
        "clear",
        "contains",
        "",
        "element",
        "containsAll",
        "elements",
        "",
        "ensureContainerSize",
        "findBestHitDistance",
        "Landroidx/compose/ui/node/DistanceAndInLayer;",
        "findBestHitDistance-ptXAw2c",
        "()J",
        "get",
        "index",
        "hasHit",
        "hit",
        "node",
        "isInLayer",
        "childHitTest",
        "Lkotlin/Function0;",
        "hitInMinimumTouchTarget",
        "distanceFromEdge",
        "",
        "indexOf",
        "isEmpty",
        "isHitInMinimumTouchTargetBetter",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "resizeToHitDepth",
        "siblingHits",
        "block",
        "speculativeHit",
        "subList",
        "fromIndex",
        "toIndex",
        "HitTestResultIterator",
        "SubList",
        "ui_release"
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
.field private distanceFromEdgeAndInLayer:[J

.field private hitDepth:I

.field private size:I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public static final synthetic access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I
    .locals 0

    .line 34
    iget p0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return p0
.end method

.method public static final synthetic access$getValues$p(Landroidx/compose/ui/node/HitTestResult;)[Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V
    .locals 0

    .line 34
    iput p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method private final ensureContainerSize()V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 185
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 186
    array-length v0, v1

    add-int/lit8 v0, v0, 0x10

    .line 187
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 188
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    :cond_0
    return-void
.end method

.method private final findBestHitDistance-ptXAw2c()J
    .locals 7

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$DistanceAndInLayer(FZ)J

    move-result-wide v0

    iget v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v2, v2, 0x1

    .line 82
    move-object v3, p0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-gt v2, v3, :cond_2

    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 83
    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Landroidx/compose/ui/node/DistanceAndInLayer;->constructor-impl(J)J

    move-result-wide v4

    .line 84
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->compareTo-S_HNhKs(JJ)I

    move-result v6

    if-gez v6, :cond_0

    move-wide v0, v4

    .line 85
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->getDistance-impl(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->isInLayer-impl(J)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private final resizeToHitDepth()V
    .locals 4

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v0, v0, 0x1

    .line 61
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 62
    aput-object v3, v2, v0

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->size:I

    return-void
.end method


# virtual methods
.method public final acceptHits()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public add(ILandroidx/compose/ui/Modifier$Node;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 240
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->resizeToHitDepth()V

    return-void
.end method

.method public contains(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Landroidx/compose/ui/Modifier$Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->contains(Landroidx/compose/ui/Modifier$Node;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    check-cast p1, Ljava/lang/Iterable;

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 196
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/HitTestResult;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 203
    aget-object p0, p0, p1

    const-string p1, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->get(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/HitTestResult;->size:I

    return p0
.end method

.method public final hasHit()Z
    .locals 3

    .line 48
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-ptXAw2c()J

    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->getDistance-impl(J)F

    move-result p0

    const/4 v2, 0x0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->isInLayer-impl(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hit(Landroidx/compose/ui/Modifier$Node;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childHitTest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "FZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childHitTest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 112
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->ensureContainerSize()V

    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 113
    aput-object p1, v1, v2

    iget-object p1, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 115
    invoke-static {p2, p3}, Landroidx/compose/ui/node/HitTestResultKt;->access$DistanceAndInLayer(FZ)J

    move-result-wide p2

    aput-wide p2, p1, v2

    .line 116
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->resizeToHitDepth()V

    .line 117
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public indexOf(Landroidx/compose/ui/Modifier$Node;)I
    .locals 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 207
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 34
    instance-of v0, p1, Landroidx/compose/ui/Modifier$Node;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->indexOf(Landroidx/compose/ui/Modifier$Node;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHitInMinimumTouchTargetBetter(FZ)Z
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 72
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 75
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/node/HitTestResultKt;->access$DistanceAndInLayer(FZ)J

    move-result-wide p1

    .line 76
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-ptXAw2c()J

    move-result-wide v0

    .line 77
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/node/DistanceAndInLayer;->compareTo-S_HNhKs(JJ)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Ljava/util/Iterator;

    return-object v7
.end method

.method public lastIndexOf(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 220
    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 34
    instance-of v0, p1, Landroidx/compose/ui/Modifier$Node;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->lastIndexOf(Landroidx/compose/ui/Modifier$Node;)I

    move-result p0

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Ljava/util/ListIterator;

    return-object v7
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Ljava/util/ListIterator;

    return-object v7
.end method

.method public remove(I)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(ILandroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final siblingHits(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v0

    .line 180
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 181
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    return-void
.end method

.method public final bridge size()I
    .locals 0

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->getSize()I

    move-result p0

    return p0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final speculativeHit(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "FZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childHitTest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 133
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 p1, p1, 0x1

    .line 136
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 138
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->resizeToHitDepth()V

    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-ptXAw2c()J

    move-result-wide v2

    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 146
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    iput v4, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 148
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 p1, p1, 0x1

    .line 149
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-ptXAw2c()J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/node/DistanceAndInLayer;->compareTo-S_HNhKs(JJ)I

    move-result p1

    if-lez p1, :cond_2

    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, v0, 0x1

    iget-object p3, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result p4

    .line 153
    invoke-static {p3, p3, p2, p1, p4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p3, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 163
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result p4

    .line 159
    invoke-static {p3, p3, p2, p1, p4}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)[J

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result p1

    add-int/2addr p1, v0

    iget p2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 169
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->resizeToHitDepth()V

    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Landroidx/compose/ui/node/HitTestResult$SubList;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/ui/node/HitTestResult$SubList;-><init>(Landroidx/compose/ui/node/HitTestResult;II)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
