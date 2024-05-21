.class public final Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;
.super Ljava/lang/Object;
.source "FragmentSystemInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flDeviceInfo:Landroid/widget/FrameLayout;

.field public final flDeviceInfoContent:Landroid/widget/FrameLayout;

.field public final flImeiInfo:Landroid/widget/FrameLayout;

.field public final flLauncherInfo:Landroid/widget/FrameLayout;

.field public final flLuancherImeiContent:Landroid/widget/FrameLayout;

.field public final flLuancherInfoContent:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

.field public final tvDeviceInfo:Landroid/widget/TextView;

.field public final tvDeviceInfoContent:Landroid/widget/TextView;

.field public final tvImeiInfo:Landroid/widget/TextView;

.field public final tvLauncherImeiContent:Landroid/widget/TextView;

.field public final tvLauncherInfo:Landroid/widget/TextView;

.field public final tvLauncherInfoContent:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingTitle;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flDeviceInfo:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flDeviceInfoContent:Landroid/widget/FrameLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flImeiInfo:Landroid/widget/FrameLayout;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flLauncherInfo:Landroid/widget/FrameLayout;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flLuancherImeiContent:Landroid/widget/FrameLayout;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->flLuancherInfoContent:Landroid/widget/FrameLayout;

    iput-object p8, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    iput-object p9, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvDeviceInfo:Landroid/widget/TextView;

    iput-object p10, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvDeviceInfoContent:Landroid/widget/TextView;

    iput-object p11, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvImeiInfo:Landroid/widget/TextView;

    iput-object p12, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvLauncherImeiContent:Landroid/widget/TextView;

    iput-object p13, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvLauncherInfo:Landroid/widget/TextView;

    iput-object p14, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->tvLauncherInfoContent:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 114
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_device_info:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 120
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_device_info_content:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 126
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_imei_info:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 132
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_launcher_info:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 138
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_luancher_imei_content:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 144
    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_luancher_info_content:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 150
    sget v1, Ltech/rabbit/r1launcher/R$id;->setting_title:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-eqz v11, :cond_0

    .line 156
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_device_info:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 162
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_device_info_content:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 168
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_imei_info:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 174
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_launcher_imei_content:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 180
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_launcher_info:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 186
    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_launcher_info_content:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 192
    new-instance v1, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingTitle;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;
    .locals 2

    .line 101
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_system_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentSystemInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
