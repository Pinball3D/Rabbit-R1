.class public final Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;
.super Ljava/lang/Object;
.source "FragmentBluetoothAdvanceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flConnectError:Landroid/widget/FrameLayout;

.field public final flDeviceContainer:Landroid/widget/FrameLayout;

.field public final flRemove:Landroid/widget/FrameLayout;

.field public final llFocusBg:Landroid/widget/LinearLayout;

.field private final rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

.field public final st:Ltech/rabbit/r1launcher/widget/SettingTitle;

.field public final tvRemove:Landroid/widget/TextView;

.field public final tvTitleFocus:Landroid/widget/TextView;

.field public final vRing:Ltech/rabbit/r1launcher/widget/SettingRing;


# direct methods
.method private constructor <init>(Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/widget/SettingTitle;Landroid/widget/TextView;Landroid/widget/TextView;Ltech/rabbit/r1launcher/widget/SettingRing;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flConnectError:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flDeviceContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    iput-object p8, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    iput-object p9, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;
    .locals 12

    .line 92
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_connect_error:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_device_container:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_remove:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 110
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_focus_bg:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 116
    sget v0, Ltech/rabbit/r1launcher/R$id;->st:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz v8, :cond_0

    .line 122
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_remove:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 128
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_title_focus:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Ltech/rabbit/r1launcher/R$id;->v_ring:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ltech/rabbit/r1launcher/widget/SettingRing;

    if-eqz v11, :cond_0

    .line 140
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-object v3, p0

    check-cast v3, Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;-><init>(Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/widget/SettingTitle;Landroid/widget/TextView;Landroid/widget/TextView;Ltech/rabbit/r1launcher/widget/SettingRing;)V

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;
    .locals 2

    .line 79
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_bluetooth_advance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->getRoot()Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    return-object p0
.end method
