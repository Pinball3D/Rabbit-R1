.class final Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryNavigationIntegration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/compose/SentryNavigationIntegrationKt;->withSentryObservableEffect(Landroidx/navigation/NavHostController;ZZLandroidx/compose/runtime/Composer;II)Landroidx/navigation/NavHostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryNavigationIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryNavigationIntegration.kt\nio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,101:1\n63#2,5:102\n*S KotlinDebug\n*F\n+ 1 SentryNavigationIntegration.kt\nio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1\n*L\n79#1:102,5\n*E\n"
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
.field final synthetic $enableBreadcrumbsSnapshot$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enableTracingSnapshot$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic $this_withSentryObservableEffect:Landroidx/navigation/NavHostController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/Lifecycle;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$this_withSentryObservableEffect:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$enableBreadcrumbsSnapshot$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$enableTracingSnapshot$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 9

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lio/sentry/compose/SentryLifecycleObserver;

    iget-object v0, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$this_withSentryObservableEffect:Landroidx/navigation/NavHostController;

    .line 69
    check-cast v0, Landroidx/navigation/NavController;

    .line 70
    new-instance v8, Lio/sentry/android/navigation/SentryNavigationListener;

    const/4 v2, 0x0

    iget-object v1, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$enableBreadcrumbsSnapshot$delegate:Landroidx/compose/runtime/State;

    .line 71
    invoke-static {v1}, Lio/sentry/compose/SentryNavigationIntegrationKt;->access$withSentryObservableEffect$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result v3

    iget-object v1, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$enableTracingSnapshot$delegate:Landroidx/compose/runtime/State;

    .line 72
    invoke-static {v1}, Lio/sentry/compose/SentryNavigationIntegrationKt;->access$withSentryObservableEffect$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v4

    const-string v5, "jetpack_compose"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    .line 70
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 68
    invoke-direct {p1, v0, v8}, Lio/sentry/compose/SentryLifecycleObserver;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    iget-object v0, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 77
    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 102
    new-instance v0, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1$invoke$$inlined$onDispose$1;-><init>(Lio/sentry/compose/SentryLifecycleObserver;Landroidx/lifecycle/Lifecycle;)V

    check-cast v0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
