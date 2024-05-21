.class public final Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;
.super Ljava/lang/Object;
.source "ItemNetworkManagerWifiBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvWifiSsid:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->tvWifiSsid:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;

    invoke-direct {v0, p0, p0}, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;
    .locals 2

    .line 42
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_network_manager_wifi:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 15
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemNetworkManagerWifiBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method
