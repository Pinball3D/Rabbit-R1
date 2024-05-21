.class public final Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;
.super Ljava/lang/Object;
.source "ItemLayoutBluetoothTitleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final slLoading:Ltech/rabbit/r1launcher/widget/SettingLoading;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/widget/SettingLoading;Landroid/widget/TextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->slLoading:Ltech/rabbit/r1launcher/widget/SettingLoading;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;
    .locals 3

    .line 63
    sget v0, Ltech/rabbit/r1launcher/R$id;->sl_loading:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/widget/SettingLoading;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;-><init>(Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/widget/SettingLoading;Landroid/widget/TextView;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;
    .locals 2

    .line 50
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_layout_bluetooth_title:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothTitleBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
