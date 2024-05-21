.class Landroidx/databinding/ViewDataBinding$LiveDataListener;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveDataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 1587
    new-instance v0, Landroidx/databinding/WeakListener;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    return-void
.end method

.method private getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1596
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method


# virtual methods
.method public addListener(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1624
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1574
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->addListener(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public getListener()Landroidx/databinding/WeakListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    return-object p0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1637
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1639
    iget v0, v0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public removeListener(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1632
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1574
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->removeListener(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1601
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1603
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1609
    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1613
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
