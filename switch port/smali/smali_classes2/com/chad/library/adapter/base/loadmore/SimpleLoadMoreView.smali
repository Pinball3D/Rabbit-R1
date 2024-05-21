.class public final Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;
.super Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
.source "SimpleLoadMoreView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;",
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "()V",
        "getLoadComplete",
        "Landroid/view/View;",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "getLoadEndView",
        "getLoadFailView",
        "getLoadingView",
        "getRootView",
        "parent",
        "Landroid/view/ViewGroup;",
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

    .line 9
    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget p0, Lcom/chad/library/R$id;->load_more_load_complete_view:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget p0, Lcom/chad/library/R$id;->load_more_load_end_view:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget p0, Lcom/chad/library/R$id;->load_more_load_fail_view:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget p0, Lcom/chad/library/R$id;->load_more_loading_view:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget p0, Lcom/chad/library/R$layout;->brvah_quick_view_load_more:I

    invoke-static {p1, p0}, Lcom/chad/library/adapter/base/util/AdapterUtilsKt;->getItemView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
