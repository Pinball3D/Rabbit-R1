.class public final Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
.super Ljava/lang/Object;
.source "FragmentWifiDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

.field public final llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

.field public final tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvState:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/SettingRing;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
    .locals 10

    .line 82
    sget v0, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_state_container:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Ltech/rabbit/r1launcher/R$id;->sr_loading:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ltech/rabbit/r1launcher/widget/SettingRing;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_connect_failure_tips:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_forget_or_retry:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_state:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-object v3, p0

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Landroidx/appcompat/widget/LinearLayoutCompat;Ltech/rabbit/r1launcher/widget/SettingRing;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
    .locals 2

    .line 69
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_wifi_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object p0
.end method
