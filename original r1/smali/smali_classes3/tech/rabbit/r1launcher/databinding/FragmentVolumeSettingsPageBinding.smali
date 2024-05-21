.class public final Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;
.super Ljava/lang/Object;
.source "FragmentVolumeSettingsPageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardVolume:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

.field public final flVolumeRootLayout:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

.field private final rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

.field public final rvVolumeItems:Landroidx/recyclerview/widget/RecyclerView;

.field public final volumeTitleSettings:Ltech/rabbit/r1launcher/widget/SettingTitle;


# direct methods
.method private constructor <init>(Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Landroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/SettingTitle;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->cardVolume:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->flVolumeRootLayout:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->rvVolumeItems:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->volumeTitleSettings:Ltech/rabbit/r1launcher/widget/SettingTitle;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;
    .locals 8

    .line 73
    sget v0, Ltech/rabbit/r1launcher/R$id;->card_volume:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    if-eqz v4, :cond_0

    .line 79
    move-object v5, p0

    check-cast v5, Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    .line 81
    sget v0, Ltech/rabbit/r1launcher/R$id;->rv_volume_items:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 87
    sget v0, Ltech/rabbit/r1launcher/R$id;->volume_title_settings:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz v7, :cond_0

    .line 93
    new-instance p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;-><init>(Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;Landroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/SettingTitle;)V

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;
    .locals 2

    .line 60
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_volume_settings_page:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->getRoot()Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentVolumeSettingsPageBinding;->rootView:Ltech/rabbit/r1launcher/widget/UntouchableFrameLayout;

    return-object p0
.end method
