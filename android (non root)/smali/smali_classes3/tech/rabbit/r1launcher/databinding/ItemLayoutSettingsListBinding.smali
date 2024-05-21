.class public final Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;
.super Ljava/lang/Object;
.source "ItemLayoutSettingsListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flHold:Landroid/widget/FrameLayout;

.field public final itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ssToggle:Ltech/rabbit/r1launcher/widget/SettingSwitch;

.field public final tvHold:Landroid/widget/TextView;

.field public final tvItem:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->flHold:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->ssToggle:Ltech/rabbit/r1launcher/widget/SettingSwitch;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->tvHold:Landroid/widget/TextView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->tvItem:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;
    .locals 9

    .line 77
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_hold:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 83
    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    sget v0, Ltech/rabbit/r1launcher/R$id;->ss_toggle:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ltech/rabbit/r1launcher/widget/SettingSwitch;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_hold:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 97
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_item:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 103
    new-instance p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v8}, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;
    .locals 2

    .line 64
    sget v0, Ltech/rabbit/r1launcher/R$layout;->item_layout_settings_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemLayoutSettingsListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
