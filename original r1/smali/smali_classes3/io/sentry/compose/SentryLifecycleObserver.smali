.class public final Lio/sentry/compose/SentryLifecycleObserver;
.super Ljava/lang/Object;
.source "SentryNavigationIntegration.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/sentry/compose/SentryLifecycleObserver;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "navController",
        "Landroidx/navigation/NavController;",
        "navListener",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;)V",
        "dispose",
        "",
        "onStateChanged",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "sentry-compose_release"
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
.field private final navController:Landroidx/navigation/NavController;

.field private final navListener:Landroidx/navigation/NavController$OnDestinationChangedListener;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 1

    const-string v0, "navController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/compose/SentryLifecycleObserver;->navController:Landroidx/navigation/NavController;

    iput-object p2, p0, Lio/sentry/compose/SentryLifecycleObserver;->navListener:Landroidx/navigation/NavController$OnDestinationChangedListener;

    const-string p0, "ComposeNavigation"

    .line 30
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "maven:io.sentry:sentry-compose"

    const-string p2, "7.4.0"

    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 26
    new-instance p2, Lio/sentry/android/navigation/SentryNavigationListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "jetpack_compose"

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/compose/SentryLifecycleObserver;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lio/sentry/compose/SentryLifecycleObserver;->navController:Landroidx/navigation/NavController;

    iget-object p0, p0, Lio/sentry/compose/SentryLifecycleObserver;->navListener:Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 43
    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lio/sentry/compose/SentryLifecycleObserver;->navController:Landroidx/navigation/NavController;

    iget-object p0, p0, Lio/sentry/compose/SentryLifecycleObserver;->navListener:Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 36
    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lio/sentry/compose/SentryLifecycleObserver;->navController:Landroidx/navigation/NavController;

    iget-object p0, p0, Lio/sentry/compose/SentryLifecycleObserver;->navListener:Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 38
    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method
