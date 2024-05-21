.class final Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusInvalidationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nFocusInvalidationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,140:1\n1855#2:141\n1856#2:252\n1855#2:253\n1856#2:364\n1855#2,2:365\n90#3:142\n90#3:254\n282#4:143\n383#4,6:144\n393#4,2:151\n395#4,8:156\n403#4,9:167\n412#4,8:179\n283#4:187\n133#4:188\n134#4,8:190\n142#4,9:199\n383#4,37:208\n151#4,6:245\n284#4:251\n282#4:255\n383#4,6:256\n393#4,2:263\n395#4,8:268\n403#4,9:279\n412#4,8:291\n283#4:299\n133#4:300\n134#4,8:302\n142#4,9:311\n383#4,37:320\n151#4,6:357\n284#4:363\n261#5:150\n261#5:262\n234#6,3:153\n237#6,3:176\n234#6,3:265\n237#6,3:288\n1182#7:164\n1161#7,2:165\n1182#7:276\n1161#7,2:277\n1#8:189\n1#8:301\n1#8:367\n48#9:198\n48#9:310\n*S KotlinDebug\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1\n*L\n59#1:141\n59#1:252\n72#1:253\n72#1:364\n120#1:365,2\n64#1:142\n86#1:254\n64#1:143\n64#1:144,6\n64#1:151,2\n64#1:156,8\n64#1:167,9\n64#1:179,8\n64#1:187\n64#1:188\n64#1:190,8\n64#1:199,9\n64#1:208,37\n64#1:245,6\n64#1:251\n86#1:255\n86#1:256,6\n86#1:263,2\n86#1:268,8\n86#1:279,9\n86#1:291,8\n86#1:299\n86#1:300\n86#1:302,8\n86#1:311,9\n86#1:320,37\n86#1:357,6\n86#1:363\n64#1:150\n86#1:262\n64#1:153,3\n64#1:176,3\n86#1:265,3\n86#1:288,3\n64#1:164\n64#1:165,2\n86#1:276\n86#1:277,2\n64#1:189\n86#1:301\n64#1:198\n86#1:310\n*E\n"
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
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 59
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 141
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "visitChildren called on an unattached node"

    const/16 v5, 0x400

    const/16 v6, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 62
    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    .line 142
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 143
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    if-eqz v10, :cond_9

    .line 147
    instance-of v12, v10, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_1

    .line 148
    check-cast v10, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_8

    .line 149
    instance-of v12, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_8

    .line 152
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 153
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v13, v8

    :goto_1
    if-eqz v12, :cond_7

    .line 150
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v5

    if-eqz v14, :cond_6

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_2

    move-object v10, v12

    goto :goto_2

    :cond_2
    if-nez v11, :cond_3

    .line 166
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v14, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v10, :cond_5

    if-eqz v11, :cond_4

    .line 169
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_4
    const/4 v10, 0x0

    :cond_5
    if-eqz v11, :cond_6

    .line 172
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    :cond_6
    :goto_2
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_1

    :cond_7
    if-ne v13, v9, :cond_8

    goto :goto_0

    .line 184
    :cond_8
    :goto_3
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_0

    .line 188
    :cond_9
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 166
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v10, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 191
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-nez v10, :cond_a

    .line 193
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    .line 195
    :cond_a
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_b
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    sub-int/2addr v3, v9

    .line 197
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 199
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v5

    if-nez v10, :cond_c

    .line 200
    invoke-static {v4, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz v3, :cond_b

    .line 206
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    :goto_6
    if-eqz v3, :cond_b

    .line 211
    instance-of v11, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_d

    .line 212
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 150
    :cond_d
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_14

    .line 213
    instance-of v11, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_14

    .line 219
    move-object v11, v3

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 153
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v8

    :goto_7
    if-eqz v11, :cond_13

    .line 150
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_12

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_e

    move-object v3, v11

    goto :goto_8

    :cond_e
    if-nez v10, :cond_f

    .line 166
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_f
    if-eqz v3, :cond_11

    if-eqz v10, :cond_10

    .line 230
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_10
    const/4 v3, 0x0

    :cond_11
    if-eqz v10, :cond_12

    .line 233
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    :cond_12
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_7

    :cond_13
    if-ne v12, v9, :cond_14

    goto :goto_6

    .line 242
    :cond_14
    :goto_9
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_6

    .line 247
    :cond_15
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_5

    .line 188
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 68
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 71
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 72
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 253
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 78
    invoke-interface {v10}, Landroidx/compose/ui/focus/FocusEventModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-nez v11, :cond_18

    .line 79
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v11, Landroidx/compose/ui/focus/FocusState;

    invoke-interface {v10, v11}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    move v11, v9

    goto/16 :goto_16

    .line 86
    :cond_18
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    .line 254
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v12

    .line 255
    invoke-interface {v11}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move/from16 v17, v8

    move/from16 v16, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    if-eqz v13, :cond_23

    .line 259
    instance-of v5, v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v5, :cond_1b

    .line 260
    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_19

    move/from16 v17, v9

    .line 100
    :cond_19
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 102
    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v16, v8

    :cond_1a
    move-object v14, v13

    goto :goto_e

    .line 262
    :cond_1b
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v12

    if-eqz v5, :cond_22

    .line 261
    instance-of v5, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_22

    .line 264
    move-object v5, v13

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 265
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move v7, v8

    :goto_c
    if-eqz v5, :cond_21

    .line 262
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v12

    if-eqz v18, :cond_20

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v9, :cond_1c

    move-object v13, v5

    goto :goto_d

    :cond_1c
    if-nez v15, :cond_1d

    .line 278
    new-instance v15, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v15, v9, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_1d
    if-eqz v13, :cond_1f

    if-eqz v15, :cond_1e

    .line 281
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1e
    const/4 v13, 0x0

    :cond_1f
    if-eqz v15, :cond_20

    .line 284
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 288
    :cond_20
    :goto_d
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    const/4 v9, 0x1

    goto :goto_c

    :cond_21
    move v5, v9

    if-ne v7, v5, :cond_22

    move v9, v5

    const/16 v5, 0x400

    goto :goto_b

    .line 296
    :cond_22
    :goto_e
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    const/16 v5, 0x400

    const/4 v9, 0x1

    goto :goto_b

    .line 300
    :cond_23
    invoke-interface {v11}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 278
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v7, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 303
    invoke-interface {v11}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-nez v7, :cond_24

    .line 305
    invoke-interface {v11}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_f

    .line 307
    :cond_24
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_25
    :goto_f
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 310
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    .line 309
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 311
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v12

    if-nez v9, :cond_27

    .line 312
    invoke-static {v5, v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :cond_26
    const/4 v11, 0x1

    goto :goto_f

    :cond_27
    :goto_10
    if-eqz v7, :cond_26

    .line 318
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v12

    if-eqz v9, :cond_33

    const/4 v9, 0x0

    :goto_11
    if-eqz v7, :cond_25

    .line 323
    instance-of v11, v7, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_2b

    .line 324
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_28

    const/16 v17, 0x1

    .line 100
    :cond_28
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 102
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v16, v8

    :cond_29
    move-object v14, v7

    :cond_2a
    const/4 v11, 0x1

    goto :goto_14

    .line 262
    :cond_2b
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v12

    if-eqz v11, :cond_2a

    .line 325
    instance-of v11, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_2a

    .line 331
    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 265
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v13, v8

    :goto_12
    if-eqz v11, :cond_31

    .line 262
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v12

    if-eqz v15, :cond_30

    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x1

    if-ne v13, v15, :cond_2c

    move-object v7, v11

    goto :goto_13

    :cond_2c
    if-nez v9, :cond_2d

    .line 278
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v15, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2d
    if-eqz v7, :cond_2f

    if-eqz v9, :cond_2e

    .line 342
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_2e
    const/4 v7, 0x0

    :cond_2f
    if-eqz v9, :cond_30

    .line 345
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 288
    :cond_30
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_12

    :cond_31
    const/4 v11, 0x1

    if-ne v13, v11, :cond_32

    goto :goto_11

    .line 354
    :cond_32
    :goto_14
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_11

    :cond_33
    const/4 v11, 0x1

    .line 359
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_10

    :cond_34
    const/4 v11, 0x1

    if-eqz v16, :cond_38

    if-eqz v17, :cond_35

    .line 110
    invoke-static {v10}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v5

    goto :goto_15

    :cond_35
    if-eqz v14, :cond_36

    .line 112
    invoke-virtual {v14}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    if-nez v5, :cond_37

    :cond_36
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :cond_37
    check-cast v5, Landroidx/compose/ui/focus/FocusState;

    .line 108
    :goto_15
    invoke-interface {v10, v5}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    :cond_38
    :goto_16
    move v9, v11

    const/16 v5, 0x400

    goto/16 :goto_a

    .line 300
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 117
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 120
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 365
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 123
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 125
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    .line 126
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 127
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    if-ne v4, v5, :cond_3c

    .line 128
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 129
    :cond_3c
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_17

    :cond_3d
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 132
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 135
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 136
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 137
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unprocessed FocusTarget nodes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unprocessed FocusEvent nodes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unprocessed FocusProperties nodes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
