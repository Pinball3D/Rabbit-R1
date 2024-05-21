.class public final Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "QuickViewBindingItemBinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinderVBHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0008\u0008\u0002\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "viewBinding",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "getViewBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "Landroidx/viewbinding/ViewBinding;",
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


# instance fields
.field private final viewBinding:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "viewBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;->viewBinding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method


# virtual methods
.method public final getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;->viewBinding:Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method
