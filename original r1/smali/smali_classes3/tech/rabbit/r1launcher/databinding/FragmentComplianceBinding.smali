.class public final Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;
.super Ljava/lang/Object;
.source "FragmentComplianceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

.field public final ssivPicture:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field public final svContainer:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/widget/ScrollView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->ssivPicture:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->svContainer:Landroid/widget/ScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;
    .locals 8

    .line 74
    sget v0, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Ltech/rabbit/r1launcher/R$id;->sbev_scroll_bar:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Ltech/rabbit/r1launcher/R$id;->ssiv_picture:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Ltech/rabbit/r1launcher/R$id;->sv_container:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ScrollView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;-><init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/widget/ScrollView;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;
    .locals 2

    .line 61
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_compliance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentComplianceBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
