.class final Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$collapsedSemantics$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1461:1\n76#2:1462\n728#3,18:1463\n746#3,3:1525\n383#4,5:1481\n388#4:1487\n393#4,2:1489\n395#4,8:1494\n403#4,9:1505\n412#4,8:1517\n1#5:1486\n261#6:1488\n234#7,3:1491\n237#7,3:1514\n1182#8:1502\n1161#8,2:1503\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$collapsedSemantics$1\n*L\n422#1:1462\n422#1:1463,18\n422#1:1525,3\n422#1:1481,5\n422#1:1487\n422#1:1489,2\n422#1:1494,8\n422#1:1505,9\n422#1:1517,8\n422#1:1488\n422#1:1491,3\n422#1:1514,3\n422#1:1502\n422#1:1503,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $config:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 422
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/16 v1, 0x8

    .line 1462
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1469
    invoke-static {v0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_b

    .line 1478
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    .line 1471
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_a

    .line 1484
    instance-of v5, v3, Landroidx/compose/ui/node/SemanticsModifierNode;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 1485
    check-cast v3, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 423
    invoke-interface {v3}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    new-instance v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 425
    iget-object v5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setClearingSemantics(Z)V

    .line 427
    :cond_0
    invoke-interface {v3}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    iget-object v5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setMergingSemanticsOfDescendants(Z)V

    .line 430
    :cond_1
    iget-object v5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-interface {v3, v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    goto :goto_4

    .line 1488
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_9

    .line 1487
    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_9

    .line 1490
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 1491
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-eqz v5, :cond_8

    .line 1488
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    .line 1504
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v9, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    .line 1507
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v3, v2

    :cond_6
    if-eqz v4, :cond_7

    .line 1510
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1514
    :cond_7
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_2

    :cond_8
    if-ne v8, v6, :cond_9

    goto :goto_1

    .line 1522
    :cond_9
    :goto_4
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_1

    .line 1525
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    return-void
.end method
