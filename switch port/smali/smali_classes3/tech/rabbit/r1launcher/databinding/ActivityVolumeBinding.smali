.class public final Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;
.super Ljava/lang/Object;
.source "ActivityVolumeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flVolumeContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->flVolumeContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;
    .locals 2

    .line 57
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_volume_container:I

    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;
    .locals 2

    .line 44
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_volume:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityVolumeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
