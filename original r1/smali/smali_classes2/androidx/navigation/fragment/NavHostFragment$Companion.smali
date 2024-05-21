.class public final Landroidx/navigation/fragment/NavHostFragment$Companion;
.super Ljava/lang/Object;
.source "NavHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/NavHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/navigation/fragment/NavHostFragment$Companion;",
        "",
        "()V",
        "KEY_DEFAULT_NAV_HOST",
        "",
        "KEY_GRAPH_ID",
        "KEY_NAV_CONTROLLER_STATE",
        "KEY_START_DESTINATION_ARGS",
        "create",
        "Landroidx/navigation/fragment/NavHostFragment;",
        "graphResId",
        "",
        "startDestinationArgs",
        "Landroid/os/Bundle;",
        "findNavController",
        "Landroidx/navigation/NavController;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "navigation-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Landroidx/navigation/fragment/NavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/fragment/NavHostFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 384
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(I)Landroidx/navigation/fragment/NavHostFragment;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create$default(Landroidx/navigation/fragment/NavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p0

    return-object p0
.end method

.method public final create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 390
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android-support-nav:fragment:graphId"

    .line 391
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-nez p0, :cond_1

    .line 395
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string p1, "android-support-nav:fragment:startDestinationArgs"

    .line 397
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 399
    :cond_2
    new-instance p1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-direct {p1}, Landroidx/navigation/fragment/NavHostFragment;-><init>()V

    if-eqz p0, :cond_3

    .line 401
    invoke-virtual {p1, p0}, Landroidx/navigation/fragment/NavHostFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    return-object p1
.end method

.method public final findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "fragment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_2

    .line 350
    instance-of v0, p0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v0, :cond_0

    .line 351
    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    return-object p0

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 355
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v1, :cond_1

    .line 356
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    return-object p0

    .line 358
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 364
    invoke-static {p0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 368
    :cond_3
    instance-of p0, p1, Landroidx/fragment/app/DialogFragment;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    goto :goto_1

    :cond_4
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 370
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 372
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not have a NavController set"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
