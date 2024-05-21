.class public abstract Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder;
.super Lcom/chad/library/adapter/base/binder/BaseItemBinder;
.source "QuickDataBindingItemBinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "DB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
        "TT;",
        "Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder<",
        "TDB;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0004:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder;",
        "T",
        "DB",
        "Landroidx/databinding/ViewDataBinding;",
        "Lcom/chad/library/adapter/base/binder/BaseItemBinder;",
        "Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;",
        "()V",
        "onCreateDataBinding",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;",
        "onCreateViewHolder",
        "BinderDataBindingHolder",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCreateDataBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)TDB;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder<",
            "TDB;>;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "from(parent.context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder;->onCreateDataBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-object p0
.end method
