.class public Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/LoadMoreListenerImp;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008-J\u0006\u0010.\u001a\u00020+J\u0012\u0010/\u001a\u00020 2\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u0006\u00102\u001a\u00020\u0006J\u0008\u00103\u001a\u00020+H\u0002J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u000206H\u0002J\u0006\u00107\u001a\u00020+J\u0012\u00108\u001a\u00020+2\u0008\u0008\u0002\u00109\u001a\u00020\u0006H\u0007J\u0006\u0010:\u001a\u00020+J\u0006\u0010;\u001a\u00020+J\r\u0010<\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008=J\u0012\u0010>\u001a\u00020+2\u0008\u0010?\u001a\u0004\u0018\u00010$H\u0016J\u0015\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020BH\u0000\u00a2\u0006\u0002\u0008CR\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR$\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\nR\u001a\u0010\u0010\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\"\u0004\u0008\u0011\u0010\nR\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0011\u0010\u0014\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010&\u001a\u00020 2\u0006\u0010\r\u001a\u00020 @FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010)\u00a8\u0006D"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "Lcom/chad/library/adapter/base/listener/LoadMoreListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "enableLoadMoreEndClick",
        "",
        "getEnableLoadMoreEndClick",
        "()Z",
        "setEnableLoadMoreEndClick",
        "(Z)V",
        "isAutoLoadMore",
        "setAutoLoadMore",
        "value",
        "isEnableLoadMore",
        "setEnableLoadMore",
        "isEnableLoadMoreIfNotFullPage",
        "setEnableLoadMoreIfNotFullPage",
        "<set-?>",
        "isLoadEndMoreGone",
        "isLoading",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "loadMoreStatus",
        "getLoadMoreStatus",
        "()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "loadMoreView",
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "getLoadMoreView",
        "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "setLoadMoreView",
        "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V",
        "loadMoreViewPosition",
        "",
        "getLoadMoreViewPosition",
        "()I",
        "mLoadMoreListener",
        "Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;",
        "mNextLoadEnable",
        "preLoadNumber",
        "getPreLoadNumber",
        "setPreLoadNumber",
        "(I)V",
        "autoLoadMore",
        "",
        "position",
        "autoLoadMore$com_github_CymChad_brvah",
        "checkDisableLoadMoreIfNotFullPage",
        "getTheBiggestNumber",
        "numbers",
        "",
        "hasLoadMoreView",
        "invokeLoadMoreListener",
        "isFullScreen",
        "llm",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "loadMoreComplete",
        "loadMoreEnd",
        "gone",
        "loadMoreFail",
        "loadMoreToLoading",
        "reset",
        "reset$com_github_CymChad_brvah",
        "setOnLoadMoreListener",
        "listener",
        "setupViewHolder",
        "viewHolder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "setupViewHolder$com_github_CymChad_brvah",
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
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private enableLoadMoreEndClick:Z

.field private isAutoLoadMore:Z

.field private isEnableLoadMore:Z

.field private isEnableLoadMoreIfNotFullPage:Z

.field private isLoadEndMoreGone:Z

.field private loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field private loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

.field private mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

.field private mNextLoadEnable:Z

.field private preLoadNumber:I


# direct methods
.method public static synthetic $r8$lambda$8xzWXNWE4oEt1R8ItJDGNxYOKmQ(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage$lambda$4(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9zt50EK7G9y4jOFxzcNoiGdpjg(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage$lambda$5(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSTiwjI05PJwY_rcdFCeh0tIjrs(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setupViewHolder$lambda$1(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I0NejYIIOOajvamrGUd9rVF1Nto(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener$lambda$3$lambda$2(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    .line 52
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 59
    invoke-static {}, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->getDefLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    return-void
.end method

.method private static final checkDisableLoadMoreIfNotFullPage$lambda$4(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    :cond_0
    return-void
.end method

.method private static final checkDisableLoadMoreIfNotFullPage$lambda$5(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 2

    const-string v0, "$manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 217
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 218
    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getTheBiggestNumber([I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 219
    iget-object v1, p1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 220
    iput-boolean v0, p1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    :cond_0
    return-void
.end method

.method private final getTheBiggestNumber([I)I
    .locals 3

    const/4 p0, -0x1

    if-eqz p1, :cond_2

    .line 233
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    if-le v2, p0, :cond_1

    move p0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private final invokeLoadMoreListener()V
    .locals 2

    .line 187
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 188
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerViewOrNull()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda3;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz p0, :cond_1

    .line 190
    invoke-interface {p0}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final invokeLoadMoreListener$lambda$3$lambda$2(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private final isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-ne v0, p0, :cond_1

    .line 228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadMoreEnd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final setupViewHolder$lambda$1(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 126
    :cond_1
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->enableLoadMoreEndClick:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final autoLoadMore$com_github_CymChad_brvah(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 167
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 170
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 173
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    if-nez p1, :cond_5

    return-void

    .line 180
    :cond_5
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener()V

    return-void
.end method

.method public final checkDisableLoadMoreIfNotFullPage()V
    .locals 5

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 206
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerViewOrNull()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 208
    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_3

    .line 209
    new-instance v2, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda1;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 214
    :cond_3
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_4

    .line 215
    new-instance v2, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final getEnableLoadMoreEndClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->enableLoadMoreEndClick:Z

    return p0
.end method

.method public final getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object p0
.end method

.method public final getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-object p0
.end method

.method public final getLoadMoreViewPosition()I
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 90
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getPreLoadNumber()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    return p0
.end method

.method public final hasLoadMoreView()Z
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMore:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 149
    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isLoadEndMoreGone:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 152
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isAutoLoadMore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    return p0
.end method

.method public final isEnableLoadMore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMore:Z

    return p0
.end method

.method public final isEnableLoadMoreIfNotFullPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    return p0
.end method

.method public final isLoadEndMoreGone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isLoadEndMoreGone:Z

    return p0
.end method

.method public final isLoading()Z
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 80
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadMoreComplete()V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 276
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemChanged(I)V

    .line 278
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage()V

    return-void
.end method

.method public final loadMoreEnd()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V

    return-void
.end method

.method public final loadMoreEnd(Z)V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isLoadEndMoreGone:Z

    .line 257
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 260
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 262
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public final loadMoreFail()V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 289
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final loadMoreToLoading()V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 136
    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 140
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemChanged(I)V

    .line 141
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener()V

    return-void
.end method

.method public final reset$com_github_CymChad_brvah()V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 307
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    :cond_0
    return-void
.end method

.method public final setAutoLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    return-void
.end method

.method public final setEnableLoadMore(Z)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMore:Z

    .line 105
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 109
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 113
    sget-object p1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 114
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEnableLoadMoreEndClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->enableLoadMoreEndClick:Z

    return-void
.end method

.method public final setEnableLoadMoreIfNotFullPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    return-void
.end method

.method public final setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    const/4 p1, 0x1

    .line 298
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    return-void
.end method

.method public final setPreLoadNumber(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    :cond_0
    return-void
.end method

.method public final setupViewHolder$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
