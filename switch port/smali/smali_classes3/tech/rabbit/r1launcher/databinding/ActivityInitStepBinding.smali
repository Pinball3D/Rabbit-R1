.class public final Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;
.super Ljava/lang/Object;
.source "ActivityInitStepBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flContentContainer:Landroid/widget/FrameLayout;

.field public final llBackContainer:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

.field public final tvBackTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->flContentContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->llBackContainer:Landroid/widget/LinearLayout;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->tvBackTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;
    .locals 8

    .line 73
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_content_container:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Ltech/rabbit/r1launcher/R$id;->spiv_step_progress_indicator:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;Landroid/widget/TextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;
    .locals 2

    .line 60
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_init_step:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityInitStepBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
