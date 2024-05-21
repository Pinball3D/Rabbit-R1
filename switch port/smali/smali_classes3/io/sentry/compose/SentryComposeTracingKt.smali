.class public final Lio/sentry/compose/SentryComposeTracingKt;
.super Ljava/lang/Object;
.source "SentryComposeTracing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryComposeTracing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryComposeTracing.kt\nio/sentry/compose/SentryComposeTracingKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n*L\n1#1,108:1\n76#2:109\n76#2:110\n76#2:135\n25#3:111\n67#3,3:118\n66#3:121\n418#3,13:145\n431#3,3:159\n1097#4,6:112\n1097#4,6:122\n67#5,6:128\n73#5:158\n77#5:163\n72#6:134\n73#6,9:136\n84#6:162\n*S KotlinDebug\n*F\n+ 1 SentryComposeTracing.kt\nio/sentry/compose/SentryComposeTracingKt\n*L\n78#1:109\n79#1:110\n87#1:135\n83#1:111\n89#1:118,3\n89#1:121\n87#1:145,13\n87#1:159,3\n83#1:112,6\n89#1:122,6\n87#1:128,6\n87#1:158\n87#1:163\n87#1:134\n87#1:136,9\n87#1:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aG\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\r0\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0008\u0017H\u0007\u00a2\u0006\u0002\u0010\u0018\u001a\n\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"!\u0010\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0018\u00010\t\u00a2\u0006\u0002\u0008\n0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"!\u0010\u000b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0018\u00010\t\u00a2\u0006\u0002\u0008\n0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "OP_COMPOSE",
        "",
        "OP_PARENT_COMPOSITION",
        "OP_PARENT_RENDER",
        "OP_RENDER",
        "OP_TRACE_ORIGIN",
        "localSentryCompositionParentSpan",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Lio/sentry/compose/ImmutableHolder;",
        "Lio/sentry/ISpan;",
        "Lorg/jetbrains/annotations/NotNull;",
        "localSentryRenderingParentSpan",
        "SentryTraced",
        "",
        "tag",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enableUserInteractionTracing",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "getRootSpan",
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
.field private static final OP_COMPOSE:Ljava/lang/String; = "ui.compose"

.field private static final OP_PARENT_COMPOSITION:Ljava/lang/String; = "ui.compose.composition"

.field private static final OP_PARENT_RENDER:Ljava/lang/String; = "ui.compose.rendering"

.field private static final OP_RENDER:Ljava/lang/String; = "ui.render"

.field private static final OP_TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.jetpack_compose"

.field private static final localSentryCompositionParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lio/sentry/compose/ImmutableHolder<",
            "Lio/sentry/ISpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final localSentryRenderingParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Lio/sentry/compose/ImmutableHolder<",
            "Lio/sentry/ISpan;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Pl_-WTEC7kxc9O5trFGlmk1jNgg(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/compose/SentryComposeTracingKt;->getRootSpan$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Lio/sentry/compose/SentryComposeTracingKt$localSentryCompositionParentSpan$1;->INSTANCE:Lio/sentry/compose/SentryComposeTracingKt$localSentryCompositionParentSpan$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lio/sentry/compose/SentryComposeTracingKt;->localSentryCompositionParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 53
    sget-object v0, Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;->INSTANCE:Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lio/sentry/compose/SentryComposeTracingKt;->localSentryRenderingParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final SentryTraced(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x102439d

    .line 77
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(SentryTraced)P(3,2,1)"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p5, 0xe

    if-nez v1, :cond_2

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p5

    goto :goto_1

    :cond_2
    move v1, p5

    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p5, 0x70

    if-nez v3, :cond_5

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, p5, 0x380

    if-nez v4, :cond_8

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, p5, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit16 v4, v1, 0x16db

    const/16 v5, 0x492

    if-ne v4, v5, :cond_e

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_9

    .line 107
    :cond_c
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_d
    :goto_8
    move-object v3, p1

    move v4, p2

    goto/16 :goto_d

    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    .line 74
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    :cond_f
    const/4 v2, 0x1

    if-eqz v3, :cond_10

    move p2, v2

    .line 75
    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, -0x1

    const-string v4, "io.sentry.compose.SentryTraced (SentryComposeTracing.kt:71)"

    .line 77
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_11
    sget-object v0, Lio/sentry/compose/SentryComposeTracingKt;->localSentryCompositionParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 78
    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    .line 109
    invoke-static {p4, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 78
    check-cast v0, Lio/sentry/compose/ImmutableHolder;

    sget-object v5, Lio/sentry/compose/SentryComposeTracingKt;->localSentryRenderingParentSpan:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 79
    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 110
    invoke-static {p4, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p4, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 79
    check-cast v3, Lio/sentry/compose/ImmutableHolder;

    .line 80
    invoke-virtual {v0}, Lio/sentry/compose/ImmutableHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    if-eqz v0, :cond_12

    const-string v4, "ui.compose"

    invoke-interface {v0, v4, p0}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 81
    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v4

    const-string v5, "auto.ui.jetpack_compose"

    invoke-virtual {v4, v5}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    const v4, -0x1d58f75c

    .line 83
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p4, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 112
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 113
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_13

    .line 83
    new-instance v4, Lio/sentry/compose/ImmutableHolder;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/compose/ImmutableHolder;-><init>(Ljava/lang/Object;)V

    .line 115
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    :cond_13
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    check-cast v4, Lio/sentry/compose/ImmutableHolder;

    if-eqz p2, :cond_14

    .line 85
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    invoke-static {v5, p0}, Lio/sentry/compose/SentryModifier;->sentryTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    goto :goto_b

    :cond_14
    move-object v5, p1

    :goto_b
    const v7, 0x607fb4c4

    .line 89
    invoke-interface {p4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 119
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 120
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 122
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_15

    .line 123
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v8, v7, :cond_16

    .line 89
    :cond_15
    new-instance v7, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;

    invoke-direct {v7, v4, v3, p0}, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;-><init>(Lio/sentry/compose/ImmutableHolder;Lio/sentry/compose/ImmutableHolder;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 125
    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 121
    :cond_16
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 89
    invoke-static {v5, v8}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v4, -0x76a43a57

    .line 87
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {p4, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 128
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    const/16 v5, 0x30

    .line 132
    invoke-static {v4, v2, p4, v5}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v4, 0x520574f7

    .line 133
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C(Layout)P(!1,2)71@2788L7,72@2843L7,73@2855L389:Layout.kt#80mrfh"

    invoke-static {p4, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    const v5, 0x6292b32

    const-string v7, "C:CompositionLocal.kt#9igjgp"

    .line 135
    invoke-static {p4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 134
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 136
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .line 135
    invoke-static {p4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 136
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 138
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 144
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v3

    .line 145
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 146
    :cond_17
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 147
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 148
    invoke-interface {p4, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 150
    :cond_18
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 152
    :goto_c
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 153
    invoke-static {p4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .line 140
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 155
    invoke-static {p4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, p4, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    .line 156
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v2, -0x4ab8dd79

    .line 157
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C72@3384L9:Box.kt#2w3rfo"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 158
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v2, Landroidx/compose/foundation/layout/BoxScope;

    const v3, 0x4d38b357    # 1.9367256E8f

    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v3, 0x6

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v3

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v2, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 158
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 159
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 160
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 161
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 162
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v0, :cond_19

    .line 106
    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_8

    .line 107
    :goto_d
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_e

    :cond_1a
    new-instance p2, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$3;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;II)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_e
    return-void
.end method

.method public static final synthetic access$getRootSpan()Lio/sentry/ISpan;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/compose/SentryComposeTracingKt;->getRootSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method private static final getRootSpan()Lio/sentry/ISpan;
    .locals 2

    .line 29
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 30
    new-instance v1, Lio/sentry/compose/SentryComposeTracingKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/sentry/compose/SentryComposeTracingKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 33
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/sentry/ISpan;

    return-object v0
.end method

.method private static final getRootSpan$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 1

    const-string v0, "$rootSpan"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
