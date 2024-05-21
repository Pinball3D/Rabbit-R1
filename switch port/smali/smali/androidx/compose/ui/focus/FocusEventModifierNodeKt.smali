.class public final Landroidx/compose/ui/focus/FocusEventModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusEventModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusEventModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusEventModifierNode.kt\nandroidx/compose/ui/focus/FocusEventModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,71:1\n90#2:72\n94#2:182\n90#2:183\n282#3:73\n383#3,6:74\n393#3,2:81\n395#3,8:86\n403#3,9:97\n412#3,8:109\n283#3:117\n133#3:118\n134#3,8:120\n142#3,9:129\n383#3,37:138\n151#3,6:175\n284#3:181\n241#3,2:184\n58#3:186\n59#3,8:188\n243#3:196\n244#3,2:198\n383#3,12:200\n395#3,8:215\n403#3,9:226\n412#3,8:238\n247#3:246\n68#3,7:247\n248#3:254\n261#4:80\n261#4:197\n234#5,3:83\n237#5,3:106\n234#5,3:212\n237#5,3:235\n1182#6:94\n1161#6,2:95\n1182#6:223\n1161#6,2:224\n1#7:119\n1#7:187\n48#8:128\n*S KotlinDebug\n*F\n+ 1 FocusEventModifierNode.kt\nandroidx/compose/ui/focus/FocusEventModifierNodeKt\n*L\n47#1:72\n66#1:182\n66#1:183\n47#1:73\n47#1:74,6\n47#1:81,2\n47#1:86,8\n47#1:97,9\n47#1:109,8\n47#1:117\n47#1:118\n47#1:120,8\n47#1:129,9\n47#1:138,37\n47#1:175,6\n47#1:181\n66#1:184,2\n66#1:186\n66#1:188,8\n66#1:196\n66#1:198,2\n66#1:200,12\n66#1:215,8\n66#1:226,9\n66#1:238,8\n66#1:246\n66#1:247,7\n66#1:254\n47#1:80\n66#1:197\n47#1:83,3\n47#1:106,3\n66#1:212,3\n66#1:235,3\n47#1:94\n47#1:95,2\n66#1:223\n66#1:224,2\n47#1:119\n66#1:187\n47#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0004*\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "getFocusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "invalidateFocusEvent",
        "",
        "refreshFocusEventNodes",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
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


# direct methods
.method public static final getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x400

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 73
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_9

    .line 77
    instance-of v9, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_1

    .line 78
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v8, :cond_0

    if-eq v6, v5, :cond_0

    if-eq v6, v4, :cond_0

    goto :goto_3

    .line 50
    :cond_0
    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    return-object v1

    .line 80
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    .line 79
    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_8

    .line 82
    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 83
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move v5, v7

    :goto_1
    if-eqz v4, :cond_7

    .line 80
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 96
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v2

    :cond_5
    if-eqz v3, :cond_6

    .line 102
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_6
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    :cond_7
    if-ne v5, v8, :cond_8

    goto :goto_0

    .line 114
    :cond_8
    :goto_3
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_9
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 96
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 121
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_a

    .line 123
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    .line 125
    :cond_a
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_b
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 128
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    sub-int/2addr p0, v8

    .line 127
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 129
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_c

    .line 130
    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz p0, :cond_b

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_16

    move-object v3, v2

    :goto_6
    if-eqz p0, :cond_b

    .line 141
    instance-of v9, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_e

    .line 142
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p0

    sget-object v9, Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v8, :cond_d

    if-eq v9, v5, :cond_d

    if-eq v9, v4, :cond_d

    goto :goto_9

    .line 50
    :cond_d
    check-cast p0, Landroidx/compose/ui/focus/FocusState;

    return-object p0

    .line 80
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_15

    .line 143
    instance-of v9, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_15

    .line 149
    move-object v9, p0

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 83
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move v10, v7

    :goto_7
    if-eqz v9, :cond_14

    .line 80
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_13

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v8, :cond_f

    move-object p0, v9

    goto :goto_8

    :cond_f
    if-nez v3, :cond_10

    .line 96
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v11, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_10
    if-eqz p0, :cond_12

    if-eqz v3, :cond_11

    .line 160
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object p0, v2

    :cond_12
    if-eqz v3, :cond_13

    .line 163
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_13
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_7

    :cond_14
    if-ne v10, v8, :cond_15

    goto :goto_6

    .line 172
    :cond_15
    :goto_9
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_6

    .line 177
    :cond_16
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_5

    .line 56
    :cond_17
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast p0, Landroidx/compose/ui/focus/FocusState;

    return-object p0

    .line 118
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    return-void
.end method

.method public static final refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x1000

    .line 182
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    const/16 v1, 0x400

    .line 183
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 184
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    or-int v3, v0, v1

    .line 186
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 188
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 189
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_c

    .line 191
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    :goto_1
    if-eqz v4, :cond_a

    .line 194
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_9

    if-eq v4, v2, :cond_0

    .line 197
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_9

    move-object v5, v4

    move-object v7, v6

    :goto_2
    if-eqz v5, :cond_9

    .line 203
    instance-of v8, v5, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v8, :cond_1

    .line 204
    check-cast v5, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 68
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v8

    invoke-interface {v5, v8}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto :goto_5

    .line 197
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_8

    .line 205
    instance-of v8, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_8

    .line 211
    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 212
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    const/4 v11, 0x1

    if-eqz v8, :cond_7

    .line 197
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v0

    if-eqz v12, :cond_6

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_2

    move-object v5, v8

    goto :goto_4

    :cond_2
    if-nez v7, :cond_3

    .line 225
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v11, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v5, :cond_5

    if-eqz v7, :cond_4

    .line 228
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v5, v6

    :cond_5
    if-eqz v7, :cond_6

    .line 231
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_3

    :cond_7
    if-ne v10, v11, :cond_8

    goto :goto_2

    .line 243
    :cond_8
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_2

    .line 247
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    .line 250
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 251
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    move-object v4, v6

    goto/16 :goto_0

    :cond_c
    :goto_6
    return-void

    .line 186
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
