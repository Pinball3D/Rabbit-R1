.class Landroidx/databinding/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLocalFieldId:I

.field private final mObservable:Landroidx/databinding/ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Landroidx/databinding/ObservableReference<",
            "TT;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    iput-object p3, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    return-void
.end method


# virtual methods
.method protected getBinder()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_0
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    .line 78
    invoke-interface {p0, p1}, Landroidx/databinding/ObservableReference;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    iput-object p1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    .line 85
    invoke-interface {p0, p1}, Landroidx/databinding/ObservableReference;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregister()Z
    .locals 2

    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    .line 92
    invoke-interface {v1, v0}, Landroidx/databinding/ObservableReference;->removeListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    return v0
.end method
