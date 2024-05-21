.class public final Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;
.super Ljava/lang/Object;
.source "ActivityOtaBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRetry:Landroid/widget/FrameLayout;

.field public final progressBar:Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvInfo:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final tvProgress:Landroid/widget/TextView;

.field public final tvRemove:Landroid/widget/TextView;

.field public final tvTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Landroid/widget/TextView;Landroid/widget/TextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->btnRetry:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->progressBar:Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->tvInfo:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->tvProgress:Landroid/widget/TextView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->tvRemove:Landroid/widget/TextView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->tvTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;
    .locals 10

    .line 82
    sget v0, Ltech/rabbit/r1launcher/R$id;->btn_retry:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Ltech/rabbit/r1launcher/R$id;->progress_bar:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_info:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_progress:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_remove:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Landroid/widget/TextView;Landroid/widget/TextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;
    .locals 2

    .line 69
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_ota:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
