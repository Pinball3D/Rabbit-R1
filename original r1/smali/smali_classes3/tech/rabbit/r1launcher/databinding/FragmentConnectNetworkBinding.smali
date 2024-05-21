.class public final Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;
.super Ljava/lang/Object;
.source "FragmentConnectNetworkBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

.field public final lvNetworkOptions:Ltech/rabbit/r1launcher/initstep/widget/NoScrollListView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;Ltech/rabbit/r1launcher/initstep/widget/NoScrollListView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->lvNetworkOptions:Ltech/rabbit/r1launcher/initstep/widget/NoScrollListView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->tvTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;
    .locals 4

    .line 69
    sget v0, Ltech/rabbit/r1launcher/R$id;->fmvv_launcher:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    if-eqz v1, :cond_0

    .line 75
    sget v0, Ltech/rabbit/r1launcher/R$id;->lv_network_options:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/initstep/widget/NoScrollListView;

    if-eqz v2, :cond_0

    .line 81
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 87
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;-><init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;Ltech/rabbit/r1launcher/initstep/widget/NoScrollListView;Landroid/widget/TextView;)V

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;
    .locals 2

    .line 56
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_connect_network:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentConnectNetworkBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
