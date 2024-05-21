.class public final Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;
.super Ljava/lang/Object;
.source "FragmentAboutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

.field public final sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;
    .locals 4

    .line 68
    sget v0, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Ltech/rabbit/r1launcher/R$id;->rv_list:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Ltech/rabbit/r1launcher/R$id;->sbev_scroll_bar:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;-><init>(Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/CanBackLabelView;Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;
    .locals 2

    .line 55
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_about:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentAboutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
