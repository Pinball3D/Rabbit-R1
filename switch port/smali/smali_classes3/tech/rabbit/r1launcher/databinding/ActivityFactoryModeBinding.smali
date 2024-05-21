.class public final Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;
.super Ljava/lang/Object;
.source "ActivityFactoryModeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvAging:Landroid/widget/TextView;

.field public final tvBack:Landroid/widget/TextView;

.field public final tvDeviceId:Landroid/widget/TextView;

.field public final tvFactory:Landroid/widget/TextView;

.field public final tvShutdown:Landroid/widget/TextView;

.field public final viewAdbOpen:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->tvAging:Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->tvBack:Landroid/widget/TextView;

    iput-object p4, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->tvDeviceId:Landroid/widget/TextView;

    iput-object p5, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->tvFactory:Landroid/widget/TextView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->tvShutdown:Landroid/widget/TextView;

    iput-object p7, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->viewAdbOpen:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;
    .locals 10

    .line 79
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_aging:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_back:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_device_id:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_factory:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_shutdown:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 109
    sget v0, Ltech/rabbit/r1launcher/R$id;->view_adb_open:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 115
    new-instance v0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;
    .locals 2

    .line 66
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_factory_mode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ActivityFactoryModeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
