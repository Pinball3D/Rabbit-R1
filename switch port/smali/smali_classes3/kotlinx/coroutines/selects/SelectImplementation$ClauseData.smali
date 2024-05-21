.class public final Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClauseData"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u00b6\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012U\u0010\u0003\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000b\u0012U\u0010\u000c\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004j\u0002`\u000e\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012g\u0010\u0010\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0011\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u0012\u0018\u00010\u0004j\u0004\u0018\u0001`\u0014\u00a2\u0006\u0002\u0010\u0015J*\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n\u0018\u00010\u00122\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001J\u0006\u0010\u001a\u001a\u00020\nJ\u001b\u0010\u001b\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001J\u0014\u0010 \u001a\u00020!2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000Rq\u0010\u0010\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0011\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u0012\u0018\u00010\u0004j\u0004\u0018\u0001`\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R]\u0010\u000c\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004j\u0002`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R]\u0010\u0003\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;",
        "",
        "clauseObject",
        "regFunc",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "param",
        "",
        "Lkotlinx/coroutines/selects/RegistrationFunction;",
        "processResFunc",
        "clauseResult",
        "Lkotlinx/coroutines/selects/ProcessResultFunction;",
        "block",
        "onCancellationConstructor",
        "internalResult",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/selects/OnCancellationConstructor;",
        "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V",
        "disposableHandleOrSegment",
        "indexInSegment",
        "",
        "createOnCancellationAction",
        "dispose",
        "invokeBlock",
        "argument",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processResult",
        "result",
        "tryRegisterAsWaiter",
        "",
        "Lkotlinx/coroutines/selects/SelectImplementation;",
        "kotlinx-coroutines-core"
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
.field private final block:Ljava/lang/Object;

.field public final clauseObject:Ljava/lang/Object;

.field public disposableHandleOrSegment:Ljava/lang/Object;

.field public indexInSegment:I

.field public final onCancellationConstructor:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final param:Ljava/lang/Object;

.field private final processResFunc:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final regFunc:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->regFunc:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResFunc:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    iput-object p6, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    iput-object p7, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    return-void
.end method


# virtual methods
.method public final createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    .line 836
    invoke-interface {v0, p1, p0, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final dispose()V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    .line 827
    instance-of v2, v0, Lkotlinx/coroutines/internal/Segment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 828
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    iget p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v1}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_0

    .line 830
    :cond_0
    instance-of p0, v0, Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/DisposableHandle;

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    .line 816
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getPARAM_CLAUSE_0()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const-string p0, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>"

    .line 817
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 818
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>"

    .line 820
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 821
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResFunc:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    .line 799
    invoke-interface {v0, v1, p0, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final tryRegisterAsWaiter(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;)Z"
        }
    .end annotation

    .line 783
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInRegistrationPhase(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$isCancelled(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 784
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->regFunc:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    .line 785
    invoke-interface {v0, v1, p1, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method
