.class public final Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusRequesterModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequesterModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequesterModifierNode.kt\nandroidx/compose/ui/focus/FocusRequesterModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,97:1\n90#2:98\n90#2:208\n90#2:318\n282#3:99\n383#3,6:100\n393#3,2:107\n395#3,8:112\n403#3,9:123\n412#3,8:135\n283#3:143\n133#3:144\n134#3,8:146\n142#3,9:155\n383#3,37:164\n151#3,6:201\n284#3:207\n282#3:209\n383#3,6:210\n393#3,2:217\n395#3,8:222\n403#3,9:233\n412#3,8:245\n283#3:253\n133#3:254\n134#3,8:256\n142#3,9:265\n383#3,37:274\n151#3,6:311\n284#3:317\n282#3:319\n383#3,6:320\n393#3,2:327\n395#3,8:332\n403#3,9:343\n412#3,8:355\n283#3:363\n133#3:364\n134#3,8:366\n142#3,9:375\n383#3,37:384\n151#3,6:421\n284#3:427\n261#4:106\n261#4:216\n261#4:326\n234#5,3:109\n237#5,3:132\n234#5,3:219\n237#5,3:242\n234#5,3:329\n237#5,3:352\n1182#6:120\n1161#6,2:121\n1182#6:230\n1161#6,2:231\n1182#6:340\n1161#6,2:341\n1#7:145\n1#7:255\n1#7:365\n48#8:154\n48#8:264\n48#8:374\n*S KotlinDebug\n*F\n+ 1 FocusRequesterModifierNode.kt\nandroidx/compose/ui/focus/FocusRequesterModifierNodeKt\n*L\n40#1:98\n69#1:208\n92#1:318\n40#1:99\n40#1:100,6\n40#1:107,2\n40#1:112,8\n40#1:123,9\n40#1:135,8\n40#1:143\n40#1:144\n40#1:146,8\n40#1:155,9\n40#1:164,37\n40#1:201,6\n40#1:207\n69#1:209\n69#1:210,6\n69#1:217,2\n69#1:222,8\n69#1:233,9\n69#1:245,8\n69#1:253\n69#1:254\n69#1:256,8\n69#1:265,9\n69#1:274,37\n69#1:311,6\n69#1:317\n92#1:319\n92#1:320,6\n92#1:327,2\n92#1:332,8\n92#1:343,9\n92#1:355,8\n92#1:363\n92#1:364\n92#1:366,8\n92#1:375,9\n92#1:384,37\n92#1:421,6\n92#1:427\n40#1:106\n69#1:216\n92#1:326\n40#1:109,3\n40#1:132,3\n69#1:219,3\n69#1:242,3\n92#1:329,3\n92#1:352,3\n40#1:120\n40#1:121,2\n69#1:230\n69#1:231,2\n92#1:340\n92#1:341,2\n40#1:145\n69#1:255\n92#1:365\n40#1:154\n69#1:264\n92#1:374\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "captureFocus",
        "",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
        "freeFocus",
        "requestFocus",
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
.method public static final captureFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x400

    .line 208
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 209
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    .line 213
    instance-of v7, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_0

    .line 214
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 70
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->captureFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v6

    .line 216
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_7

    .line 215
    instance-of v7, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_7

    .line 218
    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 219
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_1
    if-eqz v7, :cond_6

    .line 216
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_1

    move-object v1, v7

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    .line 232
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, v2

    :cond_4
    if-eqz v3, :cond_5

    .line 238
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    :cond_6
    if-ne v8, v6, :cond_7

    goto :goto_0

    .line 250
    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_8
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 232
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 257
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_9

    .line 259
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    .line 261
    :cond_9
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_a
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 264
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    sub-int/2addr p0, v6

    .line 263
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 265
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_b

    .line 266
    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz p0, :cond_a

    .line 272
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_14

    move-object v3, v2

    :goto_5
    if-eqz p0, :cond_a

    .line 277
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_c

    .line 278
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 70
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->captureFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v6

    .line 216
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_13

    .line 279
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_13

    .line 285
    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 219
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_6
    if-eqz v7, :cond_12

    .line 216
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_11

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_d

    move-object p0, v7

    goto :goto_7

    :cond_d
    if-nez v3, :cond_e

    .line 232
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_e
    if-eqz p0, :cond_10

    if-eqz v3, :cond_f

    .line 296
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object p0, v2

    :cond_10
    if-eqz v3, :cond_11

    .line 299
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_11
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_6

    :cond_12
    if-ne v8, v6, :cond_13

    goto :goto_5

    .line 308
    :cond_13
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_5

    .line 313
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_4

    :cond_15
    return v5

    .line 254
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final freeFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x400

    .line 318
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 319
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    .line 323
    instance-of v7, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_0

    .line 324
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 93
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->freeFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v6

    .line 326
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_7

    .line 325
    instance-of v7, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_7

    .line 328
    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 329
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_1
    if-eqz v7, :cond_6

    .line 326
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_1

    move-object v1, v7

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    .line 342
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    .line 345
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, v2

    :cond_4
    if-eqz v3, :cond_5

    .line 348
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    :cond_6
    if-ne v8, v6, :cond_7

    goto :goto_0

    .line 360
    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 364
    :cond_8
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 342
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 367
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_9

    .line 369
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    .line 371
    :cond_9
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_a
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 374
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    sub-int/2addr p0, v6

    .line 373
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 375
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_b

    .line 376
    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz p0, :cond_a

    .line 382
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_14

    move-object v3, v2

    :goto_5
    if-eqz p0, :cond_a

    .line 387
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_c

    .line 388
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 93
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->freeFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v6

    .line 326
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_13

    .line 389
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_13

    .line 395
    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 329
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_6
    if-eqz v7, :cond_12

    .line 326
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_11

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_d

    move-object p0, v7

    goto :goto_7

    :cond_d
    if-nez v3, :cond_e

    .line 342
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_e
    if-eqz p0, :cond_10

    if-eqz v3, :cond_f

    .line 406
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object p0, v2

    :cond_10
    if-eqz v3, :cond_11

    .line 409
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_11
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_6

    :cond_12
    if-ne v8, v6, :cond_13

    goto :goto_5

    .line 418
    :cond_13
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_5

    .line 423
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_4

    :cond_15
    return v5

    .line 364
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final requestFocus(Landroidx/compose/ui/focus/FocusRequesterModifierNode;)Z
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x400

    .line 98
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 99
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_9

    .line 103
    instance-of v7, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_1

    .line 104
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 43
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    goto :goto_1

    .line 45
    :cond_0
    sget-object p0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result p0

    sget-object v0, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p0, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_1
    return p0

    .line 106
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_8

    .line 105
    instance-of v7, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_8

    .line 108
    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 109
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_2
    if-eqz v7, :cond_7

    .line 106
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_2

    move-object v1, v7

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    .line 122
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v2

    :cond_5
    if-eqz v3, :cond_6

    .line 128
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_2

    :cond_7
    if-ne v8, v6, :cond_8

    goto :goto_0

    .line 140
    :cond_8
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_9
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 122
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v3, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 147
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_a

    .line 149
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    .line 151
    :cond_a
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_b
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 154
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    sub-int/2addr p0, v6

    .line 153
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_c

    .line 156
    invoke-static {v1, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz p0, :cond_b

    .line 162
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_16

    move-object v3, v2

    :goto_6
    if-eqz p0, :cond_b

    .line 167
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_e

    .line 168
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result p0

    goto :goto_7

    .line 45
    :cond_d
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;->INSTANCE:Landroidx/compose/ui/focus/FocusRequesterModifierNodeKt$requestFocus$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findChildCorrespondingToFocusEnter--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_7
    return p0

    .line 106
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_15

    .line 169
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_15

    .line 175
    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 109
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v5

    :goto_8
    if-eqz v7, :cond_14

    .line 106
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_13

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_f

    move-object p0, v7

    goto :goto_9

    :cond_f
    if-nez v3, :cond_10

    .line 122
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v9, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_10
    if-eqz p0, :cond_12

    if-eqz v3, :cond_11

    .line 186
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object p0, v2

    :cond_12
    if-eqz v3, :cond_13

    .line 189
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_13
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_8

    :cond_14
    if-ne v8, v6, :cond_15

    goto :goto_6

    .line 198
    :cond_15
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_6

    .line 203
    :cond_16
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_5

    :cond_17
    return v5

    .line 144
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitChildren called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
