.class public final Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;
.super Ljava/lang/Object;
.source "ActivityOtaCheckBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSetNetwork:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvChargingState:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final tvChargingStateTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final tvNetworkState:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final tvNetworkStateTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

.field public final tvTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->btnSetNetwork:Landroid/widget/FrameLayout;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->tvChargingState:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->tvChargingStateTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->tvNetworkState:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->tvNetworkStateTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->tvTip:Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;
    .locals 10

    .line 81
    sget v0, Ltech/rabbit/r1launcher/R$id;->btn_set_network:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_charging_state:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v5, :cond_0

    .line 93
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_charging_state_tip:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_network_state:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_network_state_tip:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v8, :cond_0

    .line 111
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ltech/rabbit/r1launcher/ota/MarqueeTextView;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;Ltech/rabbit/r1launcher/ota/MarqueeTextView;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;
    .locals 2

    .line 68
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_ota_check:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityOtaCheckBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
