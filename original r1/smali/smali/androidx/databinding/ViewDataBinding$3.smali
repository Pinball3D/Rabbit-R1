.class Landroidx/databinding/ViewDataBinding$3;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/CreateWeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Landroidx/databinding/WeakListener;"
        }
    .end annotation

    .line 132
    new-instance p0, Landroidx/databinding/ViewDataBinding$WeakMapListener;

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$WeakMapListener;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 133
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$WeakMapListener;->getListener()Landroidx/databinding/WeakListener;

    move-result-object p0

    return-object p0
.end method
