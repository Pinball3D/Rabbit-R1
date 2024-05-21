.class public final Ltech/rabbit/r1launcher/HWTestActivityKt;
.super Ljava/lang/Object;
.source "HWTestActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Greeting",
        "",
        "name",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "GreetingPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "app_productionEnvRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Greeting(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "name"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7cdea516

    move-object/from16 v4, p2

    .line 67
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v1, 0xe

    if-nez v4, :cond_2

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v1, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v7, p1

    :goto_4
    move v15, v4

    and-int/lit8 v4, v15, 0x5b

    const/16 v8, 0x12

    if-ne v4, v8, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 72
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v5

    goto :goto_7

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 67
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object/from16 v29, v4

    goto :goto_6

    :cond_8
    move-object/from16 v29, v7

    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    const-string v6, "tech.rabbit.r1launcher.Greeting (HWTestActivity.kt:66)"

    invoke-static {v3, v15, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 69
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hello "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v3, 0x0

    move/from16 v25, v15

    move-object v15, v3

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    and-int/lit8 v26, v25, 0x70

    const/16 v27, 0x0

    const v28, 0x1fffc

    move-object v3, v5

    move-object/from16 v5, v29

    move-object/from16 v25, v3

    .line 68
    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    move-object/from16 v7, v29

    .line 72
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v4, Ltech/rabbit/r1launcher/HWTestActivityKt$Greeting$1;

    invoke-direct {v4, v0, v7, v1, v2}, Ltech/rabbit/r1launcher/HWTestActivityKt$Greeting$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_b
    return-void
.end method

.method public static final GreetingPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x2c1984c0

    .line 76
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "tech.rabbit.r1launcher.GreetingPreview (HWTestActivity.kt:75)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v0, Ltech/rabbit/r1launcher/ComposableSingletons$HWTestActivityKt;->INSTANCE:Ltech/rabbit/r1launcher/ComposableSingletons$HWTestActivityKt;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/ComposableSingletons$HWTestActivityKt;->getLambda-1$app_productionEnvRelease()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    const/16 v5, 0x180

    const/4 v6, 0x3

    move-object v4, p0

    .line 77
    invoke-static/range {v1 .. v6}, Ltech/rabbit/r1launcher/ui/theme/ThemeKt;->R1LauncherTheme(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 80
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Ltech/rabbit/r1launcher/HWTestActivityKt$GreetingPreview$1;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/HWTestActivityKt$GreetingPreview$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4
    return-void
.end method
