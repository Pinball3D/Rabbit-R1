.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusTargetNode.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusTargetModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;,
        Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTargetNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n*L\n1#1,202:1\n92#2:203\n90#2:204\n94#2:276\n94#2:320\n90#2:321\n90#2:341\n94#2:343\n241#3,2:205\n58#3:207\n59#3,8:209\n243#3:217\n244#3,2:219\n383#3,12:221\n395#3,8:236\n403#3,9:247\n412#3,8:259\n247#3:267\n68#3,7:268\n248#3:275\n383#3,6:277\n393#3,2:284\n395#3,8:289\n403#3,9:300\n412#3,8:312\n50#3,9:323\n59#3,8:333\n383#3,6:344\n393#3,2:351\n395#3,8:356\n403#3,9:367\n412#3,8:379\n68#3,7:387\n1#4:208\n1#4:332\n261#5:218\n261#5:283\n261#5:342\n261#5:350\n234#6,3:233\n237#6,3:256\n234#6,3:286\n237#6,3:309\n234#6,3:353\n237#6,3:376\n1182#7:244\n1161#7,2:245\n1182#7:297\n1161#7,2:298\n1182#7:364\n1161#7,2:365\n47#8:322\n*S KotlinDebug\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n*L\n85#1:203\n85#1:204\n167#1:276\n174#1:320\n174#1:321\n175#1:341\n178#1:343\n85#1:205,2\n85#1:207\n85#1:209,8\n85#1:217\n85#1:219,2\n85#1:221,12\n85#1:236,8\n85#1:247,9\n85#1:259,8\n85#1:267\n85#1:268,7\n85#1:275\n167#1:277,6\n167#1:284,2\n167#1:289,8\n167#1:300,9\n167#1:312,8\n174#1:323,9\n174#1:333,8\n178#1:344,6\n178#1:351,2\n178#1:356,8\n178#1:367,9\n178#1:379,8\n174#1:387,7\n85#1:208\n174#1:332\n85#1:218\n167#1:283\n175#1:342\n178#1:350\n85#1:233,3\n85#1:256,3\n167#1:286,3\n167#1:309,3\n178#1:353,3\n178#1:376,3\n85#1:244\n85#1:245,2\n167#1:297\n167#1:298,2\n178#1:364\n178#1:365,2\n174#1:322\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0005J5\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00150\u0019H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ5\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00150\u0019H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\r\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008!J\r\u0010\"\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008#J\u0008\u0010$\u001a\u00020\u0015H\u0016J\u0008\u0010%\u001a\u00020\u0015H\u0016J\r\u0010&\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\'R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0005\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "()V",
        "beyondBoundsLayoutParent",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "getBeyondBoundsLayoutParent",
        "()Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "focusState",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        "getFocusState$annotations",
        "getFocusState",
        "()Landroidx/compose/ui/focus/FocusStateImpl;",
        "setFocusState",
        "(Landroidx/compose/ui/focus/FocusStateImpl;)V",
        "isProcessingCustomEnter",
        "",
        "isProcessingCustomExit",
        "fetchCustomEnter",
        "",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "fetchCustomEnter-aToIllA$ui_release",
        "(ILkotlin/jvm/functions/Function1;)V",
        "fetchCustomExit",
        "fetchCustomExit-aToIllA$ui_release",
        "fetchFocusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "fetchFocusProperties$ui_release",
        "invalidateFocus",
        "invalidateFocus$ui_release",
        "onObservedReadsChanged",
        "onReset",
        "scheduleInvalidationForFocusEvents",
        "scheduleInvalidationForFocusEvents$ui_release",
        "FocusTargetElement",
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
.field private focusState:Landroidx/compose/ui/focus/FocusStateImpl;

.field private isProcessingCustomEnter:Z

.field private isProcessingCustomExit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 49
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    return-void
.end method

.method public static final synthetic access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return p0
.end method

.method public static final synthetic access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return p0
.end method

.method public static final synthetic access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-void
.end method

.method public static final synthetic access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-void
.end method

.method public static synthetic getFocusState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final fetchCustomEnter-aToIllA$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusProperties;->getEnter()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/focus/FocusRequester;

    .line 110
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    if-eq p1, v2, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 113
    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final fetchCustomExit-aToIllA$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 133
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    const/4 v1, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusProperties;->getExit()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/focus/FocusRequester;

    .line 137
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    if-eq p1, v2, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 140
    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;
    .locals 14

    .line 84
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    .line 85
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v1, 0x800

    .line 203
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    const/16 v2, 0x400

    .line 204
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 205
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    or-int v4, v1, v2

    .line 207
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 209
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 210
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_c

    .line 212
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v4

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    :goto_1
    if-eqz v5, :cond_a

    .line 215
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v4

    if-eqz v6, :cond_9

    if-eq v5, v3, :cond_0

    .line 218
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_9

    move-object v6, v5

    move-object v8, v7

    :goto_2
    if-eqz v6, :cond_9

    .line 224
    instance-of v9, v6, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v9, :cond_1

    .line 225
    check-cast v6, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 86
    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v6, v9}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    goto :goto_5

    .line 218
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_8

    .line 226
    instance-of v9, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_8

    .line 232
    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 233
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_3
    const/4 v12, 0x1

    if-eqz v9, :cond_7

    .line 218
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v1

    if-eqz v13, :cond_6

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v12, :cond_2

    move-object v6, v9

    goto :goto_4

    :cond_2
    if-nez v8, :cond_3

    .line 246
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v12, 0x10

    new-array v12, v12, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v12, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v8, :cond_4

    .line 249
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v6, v7

    :cond_5
    if-eqz v8, :cond_6

    .line 252
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_6
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_3

    :cond_7
    if-ne v11, v12, :cond_8

    goto :goto_2

    .line 264
    :cond_8
    :goto_5
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_2

    .line 268
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1

    .line 271
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 272
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto/16 :goto_0

    :cond_b
    move-object v5, v7

    goto/16 :goto_0

    .line 88
    :cond_c
    :goto_6
    check-cast v0, Landroidx/compose/ui/focus/FocusProperties;

    return-object v0

    .line 207
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 1

    .line 52
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    return-object p0
.end method

.method public bridge synthetic getFocusState()Landroidx/compose/ui/focus/FocusState;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusState;

    return-object p0
.end method

.method public getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    return-object p0
.end method

.method public final invalidateFocus$ui_release()V
    .locals 4

    .line 146
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 152
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    new-instance v3, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    invoke-direct {v3, v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 155
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_1

    const-string v0, "focusProperties"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/focus/FocusProperties;

    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->scheduleInvalidationForFocusEvents$ui_release()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->scheduleInvalidationForFocusEvents$ui_release()V

    .line 72
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V

    goto :goto_0

    .line 68
    :cond_2
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p0

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus(Z)V

    :goto_0
    return-void
.end method

.method public final scheduleInvalidationForFocusEvents$ui_release()V
    .locals 14

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/16 v1, 0x1000

    .line 276
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_8

    .line 280
    instance-of v8, v0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v8, :cond_0

    .line 281
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 168
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    goto :goto_3

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_7

    .line 282
    instance-of v8, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_7

    .line 285
    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 286
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v9, v6

    :goto_1
    if-eqz v8, :cond_6

    .line 283
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_1

    move-object v0, v8

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    .line 299
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v10, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v4, :cond_3

    .line 302
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v3

    :cond_4
    if-eqz v4, :cond_5

    .line 305
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_5
    :goto_2
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1

    :cond_6
    if-ne v9, v7, :cond_7

    goto :goto_0

    .line 317
    :cond_7
    :goto_3
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_8
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    .line 320
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    const/16 v2, 0x400

    .line 321
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    or-int/2addr v0, v4

    .line 331
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 333
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 334
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_15

    .line 336
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 337
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_13

    :goto_5
    if-eqz v4, :cond_13

    .line 339
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_12

    .line 341
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 342
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    goto/16 :goto_a

    .line 177
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 343
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    move-object v10, v3

    move-object v9, v4

    :goto_6
    if-eqz v9, :cond_12

    .line 347
    instance-of v11, v9, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v11, :cond_a

    .line 348
    check-cast v9, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 179
    invoke-static {v9}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    goto :goto_9

    .line 350
    :cond_a
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v8

    if-eqz v11, :cond_11

    .line 349
    instance-of v11, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_11

    .line 352
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 353
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v6

    :goto_7
    if-eqz v11, :cond_10

    .line 350
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_f

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v7, :cond_b

    move-object v9, v11

    goto :goto_8

    :cond_b
    if-nez v10, :cond_c

    .line 366
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_c
    if-eqz v9, :cond_e

    if-eqz v10, :cond_d

    .line 369
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object v9, v3

    :cond_e
    if-eqz v10, :cond_f

    .line 372
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_f
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_7

    :cond_10
    if-ne v12, v7, :cond_11

    goto :goto_6

    .line 384
    :cond_11
    :goto_9
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_6

    .line 387
    :cond_12
    :goto_a
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_5

    .line 390
    :cond_13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 391
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto/16 :goto_4

    :cond_14
    move-object v4, v3

    goto/16 :goto_4

    :cond_15
    return-void

    .line 331
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    return-void
.end method
