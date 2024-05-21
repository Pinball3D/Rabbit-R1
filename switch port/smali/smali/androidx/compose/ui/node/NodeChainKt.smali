.class public final Landroidx/compose/ui/node/NodeChainKt;
.super Ljava/lang/Object;
.source "NodeChain.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChainKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,831:1\n1162#2:832\n1#3:833\n*S KotlinDebug\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChainKt\n*L\n815#1:832\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0005\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u001a \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000c*\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cH\u0002\u001a$\u0010\u000f\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0011*\u00020\u0012*\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0006\u0010\u0014\u001a\u00020\u0012H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "ActionReplace",
        "",
        "ActionReuse",
        "ActionUpdate",
        "SentinelHead",
        "androidx/compose/ui/node/NodeChainKt$SentinelHead$1",
        "Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;",
        "actionForModifiers",
        "prev",
        "Landroidx/compose/ui/Modifier$Element;",
        "next",
        "fillVector",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/Modifier;",
        "result",
        "updateUnsafe",
        "",
        "T",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "node",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ActionReplace:I = 0x0

.field private static final ActionReuse:I = 0x2

.field private static final ActionUpdate:I = 0x1

.field private static final SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;-><init>()V

    const/4 v1, -0x1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setAggregateChildKindSet$ui_release(I)V

    sput-object v0, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    return-void
.end method

.method public static final synthetic access$fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    return-object v0
.end method

.method public static final synthetic access$updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method

.method public static final actionForModifiers(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;)I
    .locals 1

    const-string v0, "prev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 798
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/ActualKt;->areObjectsOfSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;)",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation

    .line 814
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 832
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 815
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 816
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 817
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 818
    instance-of v0, p0, Landroidx/compose/ui/CombinedModifier;

    if-eqz v0, :cond_0

    .line 819
    check-cast p0, Landroidx/compose/ui/CombinedModifier;

    invoke-virtual {p0}, Landroidx/compose/ui/CombinedModifier;->getInner$ui_release()Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-virtual {p0}, Landroidx/compose/ui/CombinedModifier;->getOuter$ui_release()Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/Modifier$Element;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 824
    :cond_1
    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->all(Lkotlin/jvm/functions/Function1;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static final updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/Modifier$Node;",
            ">(",
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "TT;>;",
            "Landroidx/compose/ui/Modifier$Node;",
            ")V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    .line 808
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/ModifierNodeElement;->update(Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method
