.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->ModalNavigationDrawer-FHprtrg(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $navigationMenu:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/compose/material3/DrawerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$navigationMenu:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput-object p3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$navigationMenu:Ljava/lang/String;

    .line 305
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$drawerState:Landroidx/compose/material3/DrawerState;

    .line 306
    invoke-virtual {v0}, Landroidx/compose/material3/DrawerState;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5$1;

    iget-object v1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object p0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, p0}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$5$1;-><init>(Landroidx/compose/material3/DrawerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->dismiss$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
