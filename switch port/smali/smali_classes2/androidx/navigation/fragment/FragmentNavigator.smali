.class public Landroidx/navigation/fragment/FragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "FragmentNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;,
        Landroidx/navigation/fragment/FragmentNavigator$Companion;,
        Landroidx/navigation/fragment/FragmentNavigator$Destination;,
        Landroidx/navigation/fragment/FragmentNavigator$Extras;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 InitializerViewModelFactory.kt\nandroidx/lifecycle/viewmodel/InitializerViewModelFactoryKt\n*L\n1#1,588:1\n1549#2:589\n1620#2,3:590\n518#2,7:596\n533#2,6:603\n31#3:593\n63#3,2:594\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator\n*L\n72#1:589\n72#1:590,3\n83#1:596,7\n115#1:603,6\n188#1:593\n188#1:594,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 ;2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004:;<=B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008\"J\u0018\u0010#\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u001a\u0010%\u001a\u00020&2\u0006\u0010\u001f\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002J*\u0010)\u001a\u00020\u001e2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00122\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0017J$\u0010-\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0002J*\u0010-\u001a\u00020\u001c2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\rH\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020,H\u0016J\n\u00106\u001a\u0004\u0018\u00010,H\u0016J\u0018\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\r2\u0006\u00105\u001a\u000209H\u0016R \u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00160\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/navigation/fragment/FragmentNavigator;",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        "context",
        "Landroid/content/Context;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "containerId",
        "",
        "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V",
        "backStack",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "getBackStack$navigation_fragment_release",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "entriesToPop",
        "",
        "",
        "getEntriesToPop$navigation_fragment_release",
        "()Ljava/util/Set;",
        "fragmentObserver",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "fragmentViewObserver",
        "Lkotlin/Function1;",
        "savedIds",
        "",
        "attachClearViewModel",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "entry",
        "state",
        "Landroidx/navigation/NavigatorState;",
        "attachClearViewModel$navigation_fragment_release",
        "attachObservers",
        "createDestination",
        "createFragmentTransaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "instantiateFragment",
        "className",
        "args",
        "Landroid/os/Bundle;",
        "navigate",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "entries",
        "onAttach",
        "onLaunchSingleTop",
        "backStackEntry",
        "onRestoreState",
        "savedState",
        "onSaveState",
        "popBackStack",
        "popUpTo",
        "",
        "ClearEntryStateViewModel",
        "Companion",
        "Destination",
        "Extras",
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


# static fields
.field private static final Companion:Landroidx/navigation/fragment/FragmentNavigator$Companion;

.field private static final KEY_SAVED_IDS:Ljava/lang/String; = "androidx-nav-fragment:navigator:savedIds"

.field private static final TAG:Ljava/lang/String; = "FragmentNavigator"


# instance fields
.field private final containerId:I

.field private final context:Landroid/content/Context;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final fragmentObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field private final fragmentViewObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/lifecycle/LifecycleEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final savedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZTQok9KDpXTagzeByclo4DN6v_M(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/fragment/FragmentNavigator;->onAttach$lambda$4(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6g2TQ9_Y2DuL3r-DYP3Exi4RF8(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/fragment/FragmentNavigator;->fragmentObserver$lambda$2(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/FragmentNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/fragment/FragmentNavigator;->Companion:Landroidx/navigation/fragment/FragmentNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    .line 65
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 80
    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/fragment/FragmentNavigator;)V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 94
    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1;

    invoke-direct {p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1;-><init>(Landroidx/navigation/fragment/FragmentNavigator;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentViewObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getFragmentViewObserver$p(Landroidx/navigation/fragment/FragmentNavigator;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentViewObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getState(Landroidx/navigation/fragment/FragmentNavigator;)Landroidx/navigation/NavigatorState;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    return-object p0
.end method

.method private final attachObservers(Landroidx/navigation/NavBackStackEntry;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 167
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Landroidx/navigation/fragment/FragmentNavigator$attachObservers$1;

    invoke-direct {v2, p0, p2, p1}, Landroidx/navigation/fragment/FragmentNavigator$attachObservers$1;-><init>(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v2}, Landroidx/navigation/fragment/FragmentNavigator$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 178
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentObserver:Landroidx/lifecycle/LifecycleEventObserver;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private final createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/FragmentTransaction;
    .locals 7

    .line 388
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.fragment.FragmentNavigator.Destination"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 389
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 394
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v3

    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v3, "fragmentManager.fragment\u2026t.classLoader, className)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 396
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v3, "fragmentManager.beginTransaction()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p2, :cond_1

    .line 397
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz p2, :cond_2

    .line 398
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz p2, :cond_3

    .line 399
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    if-eqz p2, :cond_4

    .line 400
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result p2

    goto :goto_3

    :cond_4
    move p2, v3

    :goto_3
    if-ne v4, v3, :cond_5

    if-ne v5, v3, :cond_5

    if-ne v6, v3, :cond_5

    if-eq p2, v3, :cond_a

    :cond_5
    if-eq v4, v3, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-eq v5, v3, :cond_7

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    if-eq v6, v3, :cond_8

    goto :goto_6

    :cond_8
    move v6, v2

    :goto_6
    if-eq p2, v3, :cond_9

    move v2, p2

    .line 406
    :cond_9
    invoke-virtual {v1, v4, v5, v6, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    :cond_a
    iget p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    .line 408
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 409
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p0, 0x1

    .line 410
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    return-object v1
.end method

.method private static final fragmentObserver$lambda$2(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_2

    .line 82
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 83
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 597
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 598
    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 84
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 83
    :cond_1
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    :cond_2
    return-void
.end method

.method private final navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 3

    .line 317
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->shouldRestoreState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 321
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 325
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->restoreBackStack(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->pushWithTransition(Landroidx/navigation/NavBackStackEntry;)V

    return-void

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigation/fragment/FragmentNavigator;->createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 335
    :cond_1
    instance-of v0, p3, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    if-eqz v0, :cond_2

    .line 336
    check-cast p3, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    invoke-virtual {p3}, Landroidx/navigation/fragment/FragmentNavigator$Extras;->getSharedElements()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 342
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->pushWithTransition(Landroidx/navigation/NavBackStackEntry;)V

    return-void
.end method

.method private static final onAttach$lambda$4(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "$state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fragment"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 603
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 604
    :cond_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 606
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 115
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    .line 117
    invoke-direct {p1, v0, p3}, Landroidx/navigation/fragment/FragmentNavigator;->attachObservers(Landroidx/navigation/NavBackStackEntry;Landroidx/fragment/app/Fragment;)V

    .line 121
    invoke-virtual {p1, p3, v0, p0}, Landroidx/navigation/fragment/FragmentNavigator;->attachClearViewModel$navigation_fragment_release(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final attachClearViewModel$navigation_fragment_release(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V
    .locals 2

    const-string p0, "fragment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entry"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    const-string p1, "fragment.viewModelStore"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance p1, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {p1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 188
    sget-object v0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$viewModel$1$1;->INSTANCE:Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$viewModel$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 594
    const-class v1, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 593
    invoke-virtual {p1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p1

    .line 189
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 186
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0, p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class p0, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    .line 192
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 191
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;

    invoke-direct {v0, p2, p3}, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V

    .line 192
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0, p1}, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;->setCompleteTransition(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    return-object p0
.end method

.method public createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .locals 1

    .line 251
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    check-cast p0, Landroidx/navigation/Navigator;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final getBackStack$navigation_fragment_release()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getEntriesToPop$navigation_fragment_release()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 590
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 591
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 72
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 589
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public instantiateFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Set a custom {@link androidx.fragment.app.FragmentFactory} via\n      {@link FragmentManager#setFragmentFactory(FragmentFactory)} to control\n      instantiation of Fragments."
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fragmentManager"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "className"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string p1, "fragmentManager.fragment\u2026t.classLoader, className)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 301
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FragmentNavigator"

    const-string p1, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 302
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 308
    invoke-direct {p0, v0, p2, p3}, Landroidx/navigation/fragment/FragmentNavigator;->navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAttach(Landroidx/navigation/NavigatorState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavigatorState;)V

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 114
    new-instance v1, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/FragmentOnAttachListener;)V

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 125
    new-instance v1, Landroidx/navigation/fragment/FragmentNavigator$onAttach$2;

    invoke-direct {v1, p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$onAttach$2;-><init>(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;)V

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V
    .locals 4

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 360
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FragmentNavigator"

    const-string p1, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state"

    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, p1, v0}, Landroidx/navigation/fragment/FragmentNavigator;->createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 374
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 377
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 379
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 381
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx-nav-fragment:navigator:savedIds"

    .line 422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 424
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 425
    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 415
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "androidx-nav-fragment:navigator:savedIds"

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 6

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    const-string v1, "FragmentNavigator"

    if-eqz v0, :cond_0

    const-string p0, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 215
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 222
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 227
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 230
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 231
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FragmentManager cannot save the state of the initial destination "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 237
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->saveBackStack(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 238
    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 243
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 247
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavigatorState;->popWithTransition(Landroidx/navigation/NavBackStackEntry;Z)V

    return-void
.end method
