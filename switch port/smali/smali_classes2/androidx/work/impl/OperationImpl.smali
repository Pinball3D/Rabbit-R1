.class public Landroidx/work/impl/OperationImpl;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Landroidx/work/Operation;


# instance fields
.field private final mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/work/Operation$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/MutableLiveData;

    .line 40
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 42
    sget-object v0, Landroidx/work/Operation;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-virtual {p0, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method

.method public getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/work/Operation$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public markState(Landroidx/work/Operation$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/MutableLiveData;

    .line 61
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 64
    instance-of v0, p1, Landroidx/work/Operation$State$SUCCESS;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 65
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    instance-of v0, p1, Landroidx/work/Operation$State$FAILURE;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Landroidx/work/Operation$State$FAILURE;

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 68
    invoke-virtual {p1}, Landroidx/work/Operation$State$FAILURE;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
