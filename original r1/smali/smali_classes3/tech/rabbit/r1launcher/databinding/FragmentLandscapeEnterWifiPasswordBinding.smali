.class public final Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;
.super Ljava/lang/Object;
.source "FragmentLandscapeEnterWifiPasswordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etPassword:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->etPassword:Landroid/widget/EditText;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->tvState:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;
    .locals 3

    .line 64
    sget v0, Ltech/rabbit/r1launcher/R$id;->et_password:I

    .line 65
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 70
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_state:I

    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;
    .locals 2

    .line 51
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_landscape_enter_wifi_password:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentLandscapeEnterWifiPasswordBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
