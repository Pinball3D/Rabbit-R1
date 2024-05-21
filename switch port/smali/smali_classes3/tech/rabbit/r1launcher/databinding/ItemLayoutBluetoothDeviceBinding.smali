.class public final Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;
.super Ljava/lang/Object;
.source "ItemLayoutBluetoothDeviceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flDeviceContainer:Landroid/widget/FrameLayout;

.field public final llFocusBg:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvTitle:Landroid/widget/TextView;

.field public final vRing:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->flDeviceContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->vRing:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;
    .locals 6

    .line 72
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 74
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_focus_bg:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 80
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 86
    sget v0, Ltech/rabbit/r1launcher/R$id;->v_ring:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 92
    new-instance p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-object p0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;
    .locals 2

    .line 59
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_layout_bluetooth_device:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutBluetoothDeviceBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
