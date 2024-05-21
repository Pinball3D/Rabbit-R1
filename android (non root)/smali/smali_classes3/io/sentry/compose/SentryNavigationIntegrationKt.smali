.class public final Lio/sentry/compose/SentryNavigationIntegrationKt;
.super Ljava/lang/Object;
.source "SentryNavigationIntegration.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryNavigationIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryNavigationIntegration.kt\nio/sentry/compose/SentryNavigationIntegrationKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,101:1\n76#2:102\n81#3:103\n81#3:104\n*S KotlinDebug\n*F\n+ 1 SentryNavigationIntegration.kt\nio/sentry/compose/SentryNavigationIntegrationKt\n*L\n66#1:102\n62#1:103\n63#1:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0003*\u00020\u0003H\u0001\u00a2\u0006\u0002\u0010\u0004\u001a%\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "TRACE_ORIGIN_APPENDIX",
        "",
        "withSentryObservableEffect",
        "Landroidx/navigation/NavHostController;",
        "(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;",
        "enableNavigationBreadcrumbs",
        "",
        "enableNavigationTracing",
        "(Landroidx/navigation/NavHostController;ZZLandroidx/compose/runtime/Composer;II)Landroidx/navigation/NavHostController;",
        "sentry-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TRACE_ORIGIN_APPENDIX:Ljava/lang/String; = "jetpack_compose"


# direct methods
.method public static final synthetic access$withSentryObservableEffect$lambda$0(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/compose/SentryNavigationIntegrationKt;->withSentryObservableEffect$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$withSentryObservableEffect$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/compose/SentryNavigationIntegrationKt;->withSentryObservableEffect$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final withSentryObservableEffect(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x381ba1d5

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "io.sentry.compose.withSentryObservableEffect (SentryNavigationIntegration.kt:94)"

    .line 95
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v7, 0x1b8

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    .line 96
    invoke-static/range {v3 .. v8}, Lio/sentry/compose/SentryNavigationIntegrationKt;->withSentryObservableEffect(Landroidx/navigation/NavHostController;ZZLandroidx/compose/runtime/Composer;II)Landroidx/navigation/NavHostController;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final withSentryObservableEffect(Landroidx/navigation/NavHostController;ZZLandroidx/compose/runtime/Composer;II)Landroidx/navigation/NavHostController;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7b76f325

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(withSentryObservableEffect)"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move p1, v2

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move p2, v2

    .line 60
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, -0x1

    const-string v1, "io.sentry.compose.withSentryObservableEffect (SentryNavigationIntegration.kt:57)"

    .line 61
    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 62
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    shr-int/lit8 p5, p4, 0x3

    and-int/lit8 p5, p5, 0xe

    invoke-static {p1, p3, p5}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 63
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    shr-int/lit8 p4, p4, 0x6

    and-int/lit8 p4, p4, 0xe

    invoke-static {p2, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p2

    .line 66
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/CompositionLocal;

    const p5, 0x789c5f52

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    .line 102
    invoke-static {p3, p5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p4, Landroidx/lifecycle/LifecycleOwner;

    .line 66
    invoke-interface {p4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    const-string p5, "LocalLifecycleOwner.current.lifecycle"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p5, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;

    invoke-direct {p5, p0, p4, p1, p2}, Lio/sentry/compose/SentryNavigationIntegrationKt$withSentryObservableEffect$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/Lifecycle;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast p5, Lkotlin/jvm/functions/Function1;

    const/16 p1, 0x48

    invoke-static {p4, p0, p5, p3, p1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method private static final withSentryObservableEffect$lambda$0(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final withSentryObservableEffect$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
