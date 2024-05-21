.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "NestedScrollNode.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Landroidx/compose/ui/node/DelegatableNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J)\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010$\u001a\u00020%2\u0006\u0010 \u001a\u00020%2\u0006\u0010!\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010)J!\u0010*\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008+\u0010,J%\u0010-\u001a\u00020%2\u0006\u0010!\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u00100\u001a\u00020\u001cH\u0002J\u0012\u00101\u001a\u00020\u001c2\u0008\u00102\u001a\u0004\u0018\u00010\u0007H\u0002J\u0008\u00103\u001a\u00020\u001cH\u0002J\u001f\u00104\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u00085R\u001a\u0010\u0005\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00066"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "connection",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V",
        "getConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "setConnection",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "nestedCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getNestedCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "parentConnection",
        "getParentConnection",
        "parentModifierLocal",
        "getParentModifierLocal",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "providedValues",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "resolvedDispatcher",
        "onAttach",
        "",
        "onDetach",
        "onPostFling",
        "Landroidx/compose/ui/unit/Velocity;",
        "consumed",
        "available",
        "onPostFling-RZ2iAVY",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPostScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPreFling",
        "onPreFling-QWom1Mo",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPreScroll",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "resetDispatcherFields",
        "updateDispatcher",
        "newDispatcher",
        "updateDispatcherFields",
        "updateNode",
        "updateNode$ui_release",
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
.field private connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

.field private resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    :cond_0
    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 64
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf(Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-void
.end method

.method public static final synthetic access$getNestedCoroutineScope(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method private final getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentModifierLocal()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getScope$ui_release()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getParentModifierLocal()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final resetDispatcherFields()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 155
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getModifierLocalNode$ui_release()Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setModifierLocalNode$ui_release(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)V

    :cond_0
    return-void
.end method

.method private final updateDispatcher(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resetDispatcherFields()V

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcherFields()V

    :cond_2
    return-void
.end method

.method private final updateDispatcherFields()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 147
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setModifierLocalNode$ui_release(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)V

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 148
    new-instance v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setCalculateNestedScrollScope$ui_release(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 149
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setScope$ui_release(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final getConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object p0
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object p0
.end method

.method public onAttach()V
    .locals 0

    .line 135
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcherFields()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resetDispatcherFields()V

    return-void
.end method

.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    invoke-direct {v2, p0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 103
    iget v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-wide v2, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    iget-wide v5, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    iget-object v0, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v13, v3

    move-wide v11, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 105
    iput-object v0, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v11, p1

    iput-wide v11, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    move-wide/from16 v13, p3

    iput-wide v13, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    iput v4, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    :cond_4
    :goto_1
    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v3

    .line 106
    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 107
    invoke-static {v11, v12, v3, v4}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v5

    .line 108
    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v7

    const/4 v1, 0x0

    .line 106
    iput-object v1, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->L$0:Ljava/lang/Object;

    iput-wide v3, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    iput v10, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-object p0, v0

    move-wide/from16 p1, v5

    move-wide/from16 p3, v7

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_5

    return-object v9

    :cond_5
    move-wide v2, v3

    :goto_2
    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    move-wide v3, v2

    goto :goto_3

    .line 109
    :cond_6
    sget-object v0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    .line 110
    :goto_3
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 88
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v0

    .line 89
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 91
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    move v7, p5

    .line 89
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide p0

    goto :goto_0

    .line 93
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    .line 94
    :goto_0
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iget-object p2, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v6, p0

    move-object p0, p2

    move-wide p1, v6

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object p3

    if-eqz p3, :cond_5

    iput-object p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iput v4, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v4

    goto :goto_2

    :cond_5
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v4

    :goto_2
    move-wide v6, p1

    move-object p2, p0

    move-wide p0, v4

    move-wide v4, v6

    .line 99
    iget-object p2, p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {v4, v5, p0, p1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v4

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    iput v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {p2, v4, v5, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p2

    .line 100
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 2

    .line 78
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 79
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide p0

    .line 80
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setConnection(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public final updateNode$ui_release(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 164
    invoke-direct {p0, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcher(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    return-void
.end method
