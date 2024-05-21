.class interface abstract Landroidx/databinding/ObservableReference;
.super Ljava/lang/Object;
.source "ObservableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract getListener()Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
.end method
