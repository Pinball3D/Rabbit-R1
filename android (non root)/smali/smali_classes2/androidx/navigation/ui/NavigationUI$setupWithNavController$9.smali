.class public final Landroidx/navigation/ui/NavigationUI$setupWithNavController$9;
.super Ljava/lang/Object;
.source "NavigationUI.kt"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$9\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,728:1\n56#2,4:729\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$9\n*L\n652#1:729,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "androidx/navigation/ui/NavigationUI$setupWithNavController$9",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "onDestinationChanged",
        "",
        "controller",
        "Landroidx/navigation/NavController;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "arguments",
        "Landroid/os/Bundle;",
        "navigation-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $navController:Landroidx/navigation/NavController;

.field final synthetic $weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/navigation/NavigationBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/navigation/NavigationBarView;",
            ">;",
            "Landroidx/navigation/NavController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$setupWithNavController$9;->$weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/navigation/ui/NavigationUI$setupWithNavController$9;->$navController:Landroidx/navigation/NavController;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2

    const-string p3, "controller"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/navigation/ui/NavigationUI$setupWithNavController$9;->$weakReference:Ljava/lang/ref/WeakReference;

    .line 644
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/navigation/ui/NavigationUI$setupWithNavController$9;->$navController:Landroidx/navigation/NavController;

    .line 646
    check-cast p0, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void

    .line 649
    :cond_0
    instance-of p0, p2, Landroidx/navigation/FloatingWindow;

    if-eqz p0, :cond_1

    return-void

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const-string p1, "view.menu"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_3

    .line 730
    invoke-interface {p0, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "getItem(index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/navigation/ui/NavigationUI;->matchDestination$navigation_ui_release(Landroidx/navigation/NavDestination;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 654
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
