.class final Landroidx/navigation/NavBackStackEntry$defaultFactory$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavBackStackEntry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/SavedStateViewModelFactory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/SavedStateViewModelFactory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 4

    .line 114
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    invoke-static {v1}, Landroidx/navigation/NavBackStackEntry;->access$getContext$p(Landroidx/navigation/NavBackStackEntry;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Landroid/app/Application;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/app/Application;

    :cond_1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    move-object v1, p0

    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;->invoke()Landroidx/lifecycle/SavedStateViewModelFactory;

    move-result-object p0

    return-object p0
.end method
