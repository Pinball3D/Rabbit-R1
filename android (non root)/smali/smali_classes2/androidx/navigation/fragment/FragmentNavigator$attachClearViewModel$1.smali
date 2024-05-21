.class final Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentNavigator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/fragment/FragmentNavigator;->attachClearViewModel$navigation_fragment_release(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,588:1\n1855#2,2:589\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1\n*L\n194#1:589,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $entry:Landroidx/navigation/NavBackStackEntry;

.field final synthetic $state:Landroidx/navigation/NavigatorState;


# direct methods
.method constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$state:Landroidx/navigation/NavigatorState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$state:Landroidx/navigation/NavigatorState;

    .line 194
    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 589
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 195
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method
