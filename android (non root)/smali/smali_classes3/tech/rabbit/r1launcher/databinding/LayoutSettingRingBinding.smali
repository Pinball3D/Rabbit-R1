.class public final Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;
.super Ljava/lang/Object;
.source "LayoutSettingRingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

.field public final vRing:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingLoading;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;
    .locals 3

    .line 62
    sget v0, Ltech/rabbit/r1launcher/R$id;->sl:I

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/widget/SettingLoading;

    if-eqz v1, :cond_0

    .line 68
    sget v0, Ltech/rabbit/r1launcher/R$id;->v_ring:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;-><init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingLoading;Landroid/view/View;)V

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;
    .locals 2

    .line 49
    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_ring:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
