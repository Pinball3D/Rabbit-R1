.class public final Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "NetworksAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworksAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworksAdapter.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter\n+ 2 Utils.kt\ntech/rabbit/r1launcher/settings/network2/UtilsKt\n*L\n1#1,72:1\n49#2:73\n48#2,4:74\n49#2:78\n48#2,4:79\n49#2:83\n48#2,4:84\n*S KotlinDebug\n*F\n+ 1 NetworksAdapter.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter\n*L\n36#1:73\n36#1:74,4\n37#1:78\n37#1:79,4\n38#1:83\n38#1:84,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0014J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
        "getDefItemViewType",
        "",
        "position",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
        "Companion",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter$Companion;

.field public static final VIEW_TYPE_MY_NETWORKS_LABEL:I = 0x3e7

.field public static final VIEW_TYPE_NETWORKS_LABEL:I = 0x378

.field public static final VIEW_TYPE_WIFI_ITEM:I = 0x309


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->Companion:Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->convert(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V

    return-void
.end method

.method protected convert(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "item"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->setModelToHolder(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V

    .line 46
    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->onBind(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V

    :cond_0
    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getViewType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-object p0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;
    .locals 7

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x309

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "inflate"

    const/4 v5, 0x0

    if-eq p2, p0, :cond_4

    const/16 p0, 0x378

    if-eq p2, p0, :cond_2

    const/16 p0, 0x3e7

    if-ne p2, p0, :cond_1

    .line 36
    new-instance p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/MyNetworksLabelHolder;

    const-class p2, Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;

    new-array v3, v3, [Ljava/lang/Class;

    .line 73
    const-class v6, Landroid/view/LayoutInflater;

    aput-object v6, v3, v5

    const-class v6, Landroid/view/ViewGroup;

    aput-object v6, v3, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v1

    .line 74
    invoke-virtual {p2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 76
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 74
    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;

    .line 36
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/MyNetworksLabelHolder;-><init>(Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    goto/16 :goto_0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemMyNetworksLabelBinding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "View Type is wrong, viewType = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_2
    new-instance p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;

    const-class p2, Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;

    new-array v3, v3, [Ljava/lang/Class;

    .line 78
    const-class v6, Landroid/view/LayoutInflater;

    aput-object v6, v3, v5

    const-class v6, Landroid/view/ViewGroup;

    aput-object v6, v3, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v1

    .line 79
    invoke-virtual {p2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 79
    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;

    .line 37
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/NetworksLabelHolder;-><init>(Ltech/rabbit/r1launcher/databinding/ItemNetworksLabelBinding;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    goto :goto_0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemNetworksLabelBinding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_4
    new-instance p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;

    const-class p2, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    new-array v3, v3, [Ljava/lang/Class;

    .line 83
    const-class v6, Landroid/view/LayoutInflater;

    aput-object v6, v3, v5

    const-class v6, Landroid/view/ViewGroup;

    aput-object v6, v3, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v1

    .line 84
    invoke-virtual {p2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 84
    check-cast p1, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    .line 38
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;-><init>(Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    :goto_0
    return-object p0

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemWifiItemBinding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->onViewAttachedToWindow(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->onViewAttachedToWindow(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-super {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->onViewDetachedFromWindow(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;->onDetachedFromWindow()V

    .line 52
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
