.class public final Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;
.super Ljava/lang/Object;
.source "ViewCanBackLabelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvUnfocused:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final vFadeBackground:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->tvUnfocused:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->vFadeBackground:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;
    .locals 4

    .line 68
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_focused:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_unfocused:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Ltech/rabbit/r1launcher/R$id;->v_fade_background:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Landroid/view/View;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;
    .locals 2

    .line 55
    sget v0, Ltech/rabbit/r1launcher/R$layout;->view_can_back_label:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ViewCanBackLabelBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
