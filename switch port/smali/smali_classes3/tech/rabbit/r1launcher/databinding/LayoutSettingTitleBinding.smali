.class public final Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;
.super Ljava/lang/Object;
.source "LayoutSettingTitleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llFocusTitle:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvFocusTitle:Landroid/widget/TextView;

.field public final tvNormalTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->llFocusTitle:Landroid/widget/LinearLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvFocusTitle:Landroid/widget/TextView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvNormalTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;
    .locals 4

    .line 67
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_focus_title:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 73
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_focus_title:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 79
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_normal_title:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;
    .locals 2

    .line 54
    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_title:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
