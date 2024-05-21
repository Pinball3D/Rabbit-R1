.class public abstract Landroidx/compose/ui/Modifier$Node;
.super Ljava/lang/Object;
.source "Modifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/DelegatableNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1#2:417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u00106\u001a\u00020\u00182\n\u00107\u001a\u0006\u0012\u0002\u0008\u000308H\u0080\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020<H\u0010\u00a2\u0006\u0002\u0008=J\r\u0010>\u001a\u00020<H\u0010\u00a2\u0006\u0002\u0008?J\u0008\u0010@\u001a\u00020<H\u0016J\u0008\u0010A\u001a\u00020<H\u0016J\u0008\u0010B\u001a\u00020<H\u0016J\r\u0010C\u001a\u00020<H\u0010\u00a2\u0006\u0002\u0008DJ\r\u0010E\u001a\u00020<H\u0010\u00a2\u0006\u0002\u0008FJ\r\u0010G\u001a\u00020<H\u0010\u00a2\u0006\u0002\u0008HJ\u0015\u0010I\u001a\u00020<2\u0006\u0010J\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008KJ\u0016\u0010L\u001a\u00020<2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020<0NH\u0007J\u0017\u0010O\u001a\u00020<2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0010\u00a2\u0006\u0002\u0008PR\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R$\u0010!\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u0002\u001a\u0004\u0008#\u0010\u000bR\u000e\u0010$\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010,\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u000b\"\u0004\u0008.\u0010\rR\u0010\u0010/\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00100\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u00081\u0010\u0002\u001a\u0004\u00082\u0010\u001aR\u001a\u00103\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u001a\"\u0004\u00085\u0010\u001c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006Q"
    }
    d2 = {
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "()V",
        "aggregateChildKindSet",
        "",
        "getAggregateChildKindSet$ui_release",
        "()I",
        "setAggregateChildKindSet$ui_release",
        "(I)V",
        "child",
        "getChild$ui_release",
        "()Landroidx/compose/ui/Modifier$Node;",
        "setChild$ui_release",
        "(Landroidx/compose/ui/Modifier$Node;)V",
        "<set-?>",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "coordinator",
        "getCoordinator$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "insertedNodeAwaitingAttachForInvalidation",
        "",
        "getInsertedNodeAwaitingAttachForInvalidation$ui_release",
        "()Z",
        "setInsertedNodeAwaitingAttachForInvalidation$ui_release",
        "(Z)V",
        "isAttached",
        "kindSet",
        "getKindSet$ui_release",
        "setKindSet$ui_release",
        "node",
        "getNode$annotations",
        "getNode",
        "onAttachRunExpected",
        "onDetachRunExpected",
        "ownerScope",
        "Landroidx/compose/ui/node/ObserverNodeOwnerScope;",
        "getOwnerScope$ui_release",
        "()Landroidx/compose/ui/node/ObserverNodeOwnerScope;",
        "setOwnerScope$ui_release",
        "(Landroidx/compose/ui/node/ObserverNodeOwnerScope;)V",
        "parent",
        "getParent$ui_release",
        "setParent$ui_release",
        "scope",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate$annotations",
        "getShouldAutoInvalidate",
        "updatedNodeAwaitingAttachForInvalidation",
        "getUpdatedNodeAwaitingAttachForInvalidation$ui_release",
        "setUpdatedNodeAwaitingAttachForInvalidation$ui_release",
        "isKind",
        "kind",
        "Landroidx/compose/ui/node/NodeKind;",
        "isKind-H91voCI$ui_release",
        "(I)Z",
        "markAsAttached",
        "",
        "markAsAttached$ui_release",
        "markAsDetached",
        "markAsDetached$ui_release",
        "onAttach",
        "onDetach",
        "onReset",
        "reset",
        "reset$ui_release",
        "runAttachLifecycle",
        "runAttachLifecycle$ui_release",
        "runDetachLifecycle",
        "runDetachLifecycle$ui_release",
        "setAsDelegateTo",
        "owner",
        "setAsDelegateTo$ui_release",
        "sideEffect",
        "effect",
        "Lkotlin/Function0;",
        "updateCoordinator",
        "updateCoordinator$ui_release",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private aggregateChildKindSet:I

.field private child:Landroidx/compose/ui/Modifier$Node;

.field private coordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field private insertedNodeAwaitingAttachForInvalidation:Z

.field private isAttached:Z

.field private kindSet:I

.field private node:Landroidx/compose/ui/Modifier$Node;

.field private onAttachRunExpected:Z

.field private onDetachRunExpected:Z

.field private ownerScope:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

.field private parent:Landroidx/compose/ui/Modifier$Node;

.field private scope:Lkotlinx/coroutines/CoroutineScope;

.field private updatedNodeAwaitingAttachForInvalidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    return-void
.end method

.method public static synthetic getNode$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShouldAutoInvalidate$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAggregateChildKindSet$ui_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    return p0
.end method

.method public final getChild$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public final getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_0

    .line 204
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 205
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 204
    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->scope:Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    return-object v0
.end method

.method public final getInsertedNodeAwaitingAttachForInvalidation$ui_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    return p0
.end method

.method public final getKindSet$ui_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    return p0
.end method

.method public final getNode()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public final getOwnerScope$ui_release()Landroidx/compose/ui/node/ObserverNodeOwnerScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->ownerScope:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    return-object p0
.end method

.method public final getParent$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getUpdatedNodeAwaitingAttachForInvalidation$ui_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    return p0
.end method

.method public final isAttached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    return p0
.end method

.method public final isKind-H91voCI$ui_release(I)Z
    .locals 0

    .line 261
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markAsAttached$ui_release()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    iput-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->onAttachRunExpected:Z

    return-void

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attach invoked on a node without a coordinator"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "node attached multiple times"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markAsDetached$ui_release()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onAttachRunExpected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onDetachRunExpected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_0

    .line 298
    new-instance v1, Landroidx/compose/ui/ModifierNodeDetachedCancellationException;

    invoke-direct {v1}, Landroidx/compose/ui/ModifierNodeDetachedCancellationException;-><init>()V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->scope:Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    return-void

    .line 294
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot detach a node that is not attached"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttach()V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public reset$ui_release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->onReset()V

    return-void

    .line 304
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runAttachLifecycle$ui_release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onAttachRunExpected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onAttachRunExpected:Z

    .line 276
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onDetachRunExpected:Z

    return-void

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runAttachLifecycle() only once after markAsAttached()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run markAsAttached() prior to runAttachLifecycle"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runDetachLifecycle$ui_release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onDetachRunExpected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->onDetachRunExpected:Z

    .line 288
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    return-void

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "detach invoked on a node without a coordinator"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "node detached multiple times"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAggregateChildKindSet$ui_release(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    return-void
.end method

.method public final setAsDelegateTo$ui_release(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    return-void
.end method

.method public final setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    return-void
.end method

.method public final setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    return-void
.end method

.method public final setKindSet$ui_release(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    return-void
.end method

.method public final setOwnerScope$ui_release(Landroidx/compose/ui/node/ObserverNodeOwnerScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->ownerScope:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    return-void
.end method

.method public final setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    return-void
.end method

.method public final setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    return-void
.end method

.method public final sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/ui/node/Owner;->registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method
