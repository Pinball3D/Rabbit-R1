.class final Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
.super Landroidx/compose/runtime/CompositionContext;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ComposerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompositionContextImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$CompositionContextImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,4563:1\n1855#2,2:4564\n81#3:4566\n107#3,2:4567\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$CompositionContextImpl\n*L\n3982#1:4564,2\n4032#1:4566\n4032#1:4567,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J*\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\'0+\u00a2\u0006\u0002\u0008,H\u0010\u00a2\u0006\u0004\u0008-\u0010.J\u0015\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u000201H\u0010\u00a2\u0006\u0002\u00082J\u0006\u00103\u001a\u00020\'J\r\u00104\u001a\u00020\'H\u0010\u00a2\u0006\u0002\u00085J\r\u0010\u0011\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u00086J\u0015\u00107\u001a\u00020\'2\u0006\u00100\u001a\u000201H\u0010\u00a2\u0006\u0002\u00088J\u0015\u00109\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0010\u00a2\u0006\u0002\u0008:J\u0015\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020=H\u0010\u00a2\u0006\u0002\u0008>J\u001d\u0010?\u001a\u00020\'2\u0006\u00100\u001a\u0002012\u0006\u0010@\u001a\u00020AH\u0010\u00a2\u0006\u0002\u0008BJ\u0017\u0010C\u001a\u0004\u0018\u00010A2\u0006\u00100\u001a\u000201H\u0010\u00a2\u0006\u0002\u0008DJ\u001b\u0010E\u001a\u00020\'2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\nH\u0010\u00a2\u0006\u0002\u0008GJ\u0015\u0010H\u001a\u00020\'2\u0006\u0010I\u001a\u00020JH\u0010\u00a2\u0006\u0002\u0008KJ\u0015\u0010L\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0010\u00a2\u0006\u0002\u0008MJ\u0015\u0010N\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0010\u00a2\u0006\u0002\u0008OJ\r\u0010P\u001a\u00020\'H\u0010\u00a2\u0006\u0002\u0008QJ\u0015\u0010R\u001a\u00020\'2\u0006\u0010I\u001a\u00020JH\u0010\u00a2\u0006\u0002\u0008SJ\u0015\u0010T\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0010\u00a2\u0006\u0002\u0008UJ\u000e\u0010V\u001a\u00020\'2\u0006\u0010<\u001a\u00020\u000fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR(\u0010\u001d\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\n\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\r\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u001a8PX\u0090\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010\u001c\u00a8\u0006W"
    }
    d2 = {
        "Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;",
        "Landroidx/compose/runtime/CompositionContext;",
        "compoundHashKey",
        "",
        "collectingParameterInformation",
        "",
        "(Landroidx/compose/runtime/ComposerImpl;IZ)V",
        "getCollectingParameterInformation$runtime_release",
        "()Z",
        "composers",
        "",
        "Landroidx/compose/runtime/ComposerImpl;",
        "getComposers",
        "()Ljava/util/Set;",
        "<set-?>",
        "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "compositionLocalScope",
        "getCompositionLocalScope",
        "()Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "setCompositionLocalScope",
        "(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V",
        "compositionLocalScope$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getCompoundHashKey$runtime_release",
        "()I",
        "effectCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getEffectCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "inspectionTables",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "getInspectionTables",
        "setInspectionTables",
        "(Ljava/util/Set;)V",
        "recomposeCoroutineContext",
        "getRecomposeCoroutineContext$runtime_release$annotations",
        "()V",
        "getRecomposeCoroutineContext$runtime_release",
        "composeInitial",
        "",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "composeInitial$runtime_release",
        "(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V",
        "deletedMovableContent",
        "reference",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "deletedMovableContent$runtime_release",
        "dispose",
        "doneComposing",
        "doneComposing$runtime_release",
        "getCompositionLocalScope$runtime_release",
        "insertMovableContent",
        "insertMovableContent$runtime_release",
        "invalidate",
        "invalidate$runtime_release",
        "invalidateScope",
        "scope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "invalidateScope$runtime_release",
        "movableContentStateReleased",
        "data",
        "Landroidx/compose/runtime/MovableContentState;",
        "movableContentStateReleased$runtime_release",
        "movableContentStateResolve",
        "movableContentStateResolve$runtime_release",
        "recordInspectionTable",
        "table",
        "recordInspectionTable$runtime_release",
        "registerComposer",
        "composer",
        "Landroidx/compose/runtime/Composer;",
        "registerComposer$runtime_release",
        "registerComposition",
        "registerComposition$runtime_release",
        "reportRemovedComposition",
        "reportRemovedComposition$runtime_release",
        "startComposing",
        "startComposing$runtime_release",
        "unregisterComposer",
        "unregisterComposer$runtime_release",
        "unregisterComposition",
        "unregisterComposition$runtime_release",
        "updateCompositionLocalScope",
        "runtime_release"
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
.field private final collectingParameterInformation:Z

.field private final composers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ComposerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

.field private final compoundHashKey:I

.field private inspectionTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 3960
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compoundHashKey:I

    iput-boolean p3, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingParameterInformation:Z

    .line 3962
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 4033
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 4032
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    .line 4032
    check-cast p0, Landroidx/compose/runtime/State;

    .line 4566
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method

.method public static synthetic getRecomposeCoroutineContext$runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private final setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compositionLocalScope$delegate:Landroidx/compose/runtime/MutableState;

    .line 4567
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "composition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4007
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4064
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final dispose()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 3965
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 3967
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    .line 3968
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 3969
    invoke-static {v2}, Landroidx/compose/runtime/ComposerImpl;->access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 3972
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public doneComposing$runtime_release()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4056
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public getCollectingParameterInformation$runtime_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->collectingParameterInformation:Z

    return p0
.end method

.method public final getComposers()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ComposerImpl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    return-object p0
.end method

.method public getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    .line 4037
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->getCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public getCompoundHashKey$runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->compoundHashKey:I

    return p0
.end method

.method public getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 3995
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final getInspectionTables()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-object p0
.end method

.method public getRecomposeCoroutineContext$runtime_release()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4001
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/CompositionKt;->getRecomposeCoroutineContext(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4060
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    const-string v0, "composition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4020
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4021
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public invalidateScope$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4025
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->invalidateScope$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4075
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V

    return-void
.end method

.method public movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4069
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p0

    return-object p0
.end method

.method public recordInspectionTable$runtime_release(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 4045
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4046
    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    .line 4048
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposer$runtime_release(Landroidx/compose/runtime/Composer;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3977
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    check-cast v0, Landroidx/compose/runtime/Composer;

    invoke-super {p0, v0}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 3978
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    const-string v0, "composition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 3987
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->registerComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    const-string v0, "composition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4079
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final setInspectionTables(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    return-void
.end method

.method public startComposing$runtime_release()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4052
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V
    .locals 3

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->inspectionTables:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 3982
    check-cast v0, Ljava/lang/Iterable;

    .line 4564
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3982
    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerImpl;->access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    .line 3983
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    const-string v0, "composition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 3991
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4040
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->setCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    return-void
.end method
