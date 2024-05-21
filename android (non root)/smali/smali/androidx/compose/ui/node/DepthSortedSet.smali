.class public final Landroidx/compose/ui/node/DepthSortedSet;
.super Ljava/lang/Object;
.source "DepthSortedSet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepthSortedSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepthSortedSet.kt\nandroidx/compose/ui/node/DepthSortedSet\n*L\n1#1,186:1\n100#1:187\n*S KotlinDebug\n*F\n+ 1 DepthSortedSet.kt\nandroidx/compose/ui/node/DepthSortedSet\n*L\n91#1:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u0086\u0008J\u0006\u0010\u0018\u001a\u00020\u0007J\"\u0010\u0019\u001a\u00020\u00132\u0014\u0008\u0004\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00130\u001bH\u0086\u0008\u00f8\u0001\u0000J\u000e\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0007J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/ui/node/DepthSortedSet;",
        "",
        "extraAssertions",
        "",
        "(Z)V",
        "DepthComparator",
        "Ljava/util/Comparator;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "Lkotlin/Comparator;",
        "mapOfOriginalDepth",
        "",
        "",
        "getMapOfOriginalDepth",
        "()Ljava/util/Map;",
        "mapOfOriginalDepth$delegate",
        "Lkotlin/Lazy;",
        "set",
        "Landroidx/compose/ui/node/TreeSet;",
        "add",
        "",
        "node",
        "contains",
        "isEmpty",
        "isNotEmpty",
        "pop",
        "popEach",
        "block",
        "Lkotlin/Function1;",
        "remove",
        "toString",
        "",
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
.field private final DepthComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private final extraAssertions:Z

.field private final mapOfOriginalDepth$delegate:Lkotlin/Lazy;

.field private final set:Landroidx/compose/ui/node/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/TreeSet<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    .line 35
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;->INSTANCE:Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->mapOfOriginalDepth$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Landroidx/compose/ui/node/DepthSortedSet$DepthComparator$1;

    invoke-direct {p1}, Landroidx/compose/ui/node/DepthSortedSet$DepthComparator$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->DepthComparator:Ljava/util/Comparator;

    .line 47
    new-instance v0, Landroidx/compose/ui/node/TreeSet;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    return-void
.end method

.method private final getMapOfOriginalDepth()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->mapOfOriginalDepth$delegate:Lkotlin/Lazy;

    .line 35
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final add(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    const-string v1, "Check failed."

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v0, :cond_2

    .line 60
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->getMapOfOriginalDepth()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->getMapOfOriginalDepth()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 67
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/TreeSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final contains(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 50
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v1, :cond_1

    .line 52
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->getMapOfOriginalDepth()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 97
    invoke-virtual {p0}, Landroidx/compose/ui/node/TreeSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final pop()Landroidx/compose/ui/node/LayoutNode;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 85
    invoke-virtual {v0}, Landroidx/compose/ui/node/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    const-string v1, "node"

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    return-object v0
.end method

.method public final popEach(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/node/DepthSortedSet;->pop()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 3

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    const-string v1, "Check failed."

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 72
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v2, :cond_3

    .line 74
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->getMapOfOriginalDepth()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return v0

    .line 71
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    .line 103
    invoke-virtual {p0}, Landroidx/compose/ui/node/TreeSet;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "set.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
