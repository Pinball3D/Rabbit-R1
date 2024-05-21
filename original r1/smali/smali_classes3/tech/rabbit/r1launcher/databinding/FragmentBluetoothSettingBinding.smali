.class public final Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;
.super Ljava/lang/Object;
.source "FragmentBluetoothSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;

.field public final rv:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

.field public final st:Ltech/rabbit/r1launcher/widget/SettingTitle;


# direct methods
.method private constructor <init>(Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Ltech/rabbit/r1launcher/widget/SettingTitle;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->rv:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;
    .locals 3

    .line 63
    sget v0, Ltech/rabbit/r1launcher/R$id;->rv:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Ltech/rabbit/r1launcher/R$id;->st:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    check-cast p0, Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;

    invoke-direct {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;-><init>(Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Ltech/rabbit/r1launcher/widget/SettingTitle;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;
    .locals 2

    .line 50
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_bluetooth_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->getRoot()Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableLinearLayout;

    return-object p0
.end method
