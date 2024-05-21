.class public final Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;
.super Ljava/lang/Object;
.source "ItemInitStepNetworkOptionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivItemIcon:Landroid/widget/ImageView;

.field public final llItemContainer:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvItemName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->ivItemIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->llItemContainer:Landroid/widget/LinearLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->tvItemName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;
    .locals 4

    .line 68
    sget v0, Ltech/rabbit/r1launcher/R$id;->iv_item_icon:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    sget v2, Ltech/rabbit/r1launcher/R$id;->tv_item_name:I

    .line 77
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;
    .locals 2

    .line 55
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_init_step_network_options:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemInitStepNetworkOptionsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
