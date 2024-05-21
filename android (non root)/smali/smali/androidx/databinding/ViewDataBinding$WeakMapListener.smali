.class Landroidx/databinding/ViewDataBinding$WeakMapListener;
.super Landroidx/databinding/ObservableMap$OnMapChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakMapListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableMap$OnMapChangedCallback;",
        "Landroidx/databinding/ObservableReference<",
        "Landroidx/databinding/ObservableMap;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableMap;",
            ">;"
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

    .line 1539
    invoke-direct {p0}, Landroidx/databinding/ObservableMap$OnMapChangedCallback;-><init>()V

    .line 1540
    new-instance v0, Landroidx/databinding/WeakListener;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/databinding/ObservableMap;)V
    .locals 0

    .line 1556
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->addOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1531
    check-cast p1, Landroidx/databinding/ObservableMap;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakMapListener;->addListener(Landroidx/databinding/ObservableMap;)V

    return-void
.end method

.method public getListener()Landroidx/databinding/WeakListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Landroidx/databinding/ObservableMap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    return-object p0
.end method

.method public onMapChanged(Landroidx/databinding/ObservableMap;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1566
    invoke-virtual {p2}, Landroidx/databinding/WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1567
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroidx/databinding/WeakListener;

    .line 1570
    iget p0, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeListener(Landroidx/databinding/ObservableMap;)V
    .locals 0

    .line 1561
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableMap;->removeOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1531
    check-cast p1, Landroidx/databinding/ObservableMap;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakMapListener;->removeListener(Landroidx/databinding/ObservableMap;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method
