.class public final Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
.super Ljava/lang/Object;
.source "FragmentNetworkManagerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

.field private final rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

.field public final tvCellular:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvWifi:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvCellular:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
    .locals 8

    .line 73
    sget v0, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Ltech/rabbit/r1launcher/R$id;->rv_list:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_cellular:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_wifi:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
    .locals 2

    .line 60
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_network_manager:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object p0
.end method
