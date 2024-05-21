.class public final Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;
.super Ljava/lang/Object;
.source "FragmentInitStepGuideAnimationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

.field public final lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

.field public final lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvClickToContinue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->lavAnimatorPartA:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->lavAnimatorPartB:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->lavAnimatorPartC:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->tvClickToContinue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;
    .locals 8

    .line 72
    sget v0, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_a:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_b:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Ltech/rabbit/r1launcher/R$id;->lav_animator_part_c:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_click_to_continue:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 96
    new-instance v0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;-><init>(Landroid/widget/FrameLayout;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;)V

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;
    .locals 2

    .line 59
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_init_step_guide_animation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentInitStepGuideAnimationBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
