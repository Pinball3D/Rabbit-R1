.class public final Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;
.super Ljava/lang/Object;
.source "WindowInsetsPadding.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsPadding.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsPadding.android.kt\nandroidx/compose/foundation/layout/WindowInsetsPadding_androidKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,255:1\n249#1,7:257\n249#1,7:265\n249#1,7:273\n249#1,7:281\n249#1,7:289\n249#1,7:297\n249#1,7:305\n249#1,7:313\n249#1,7:321\n249#1,7:329\n249#1,7:337\n249#1,7:345\n135#2:256\n135#2:264\n135#2:272\n135#2:280\n135#2:288\n135#2:296\n135#2:304\n135#2:312\n135#2:320\n135#2:328\n135#2:336\n135#2:344\n*S KotlinDebug\n*F\n+ 1 WindowInsetsPadding.android.kt\nandroidx/compose/foundation/layout/WindowInsetsPadding_androidKt\n*L\n41#1:257,7\n59#1:265,7\n77#1:273,7\n95#1:281,7\n113#1:289,7\n131#1:297,7\n149#1:305,7\n167#1:313,7\n185#1:321,7\n203#1:329,7\n221#1:337,7\n240#1:345,7\n41#1:256\n59#1:264\n77#1:272\n95#1:280\n113#1:288\n131#1:296\n149#1:304\n167#1:312\n185#1:320\n203#1:328\n221#1:336\n240#1:344\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0008\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u000b\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u000c\u001a\u00020\u0001*\u00020\u0001\u001aC\u0010\r\u001a\u00020\u0001*\u00020\u00012\u0019\u0008\u0008\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f\u00a2\u0006\u0002\u0008\u00122\u0019\u0008\u0004\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u000f\u00a2\u0006\u0002\u0008\u0012H\u0083\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "captionBarPadding",
        "Landroidx/compose/ui/Modifier;",
        "displayCutoutPadding",
        "imePadding",
        "mandatorySystemGesturesPadding",
        "navigationBarsPadding",
        "safeContentPadding",
        "safeDrawingPadding",
        "safeGesturesPadding",
        "statusBarsPadding",
        "systemBarsPadding",
        "systemGesturesPadding",
        "waterfallPadding",
        "windowInsetsPadding",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "insetsCalculation",
        "Landroidx/compose/foundation/layout/WindowInsetsHolder;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "foundation-layout_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final captionBarPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$captionBarPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$captionBarPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 321
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$captionBarPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$captionBarPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final displayCutoutPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 289
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$imePadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$imePadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 305
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$imePadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$imePadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final mandatorySystemGesturesPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 345
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final navigationBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 313
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final safeContentPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeContentPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeContentPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 273
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeContentPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeContentPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 257
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final safeGesturesPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeGesturesPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeGesturesPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 265
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeGesturesPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeGesturesPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final statusBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$statusBarsPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$statusBarsPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 297
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$statusBarsPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$statusBarsPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final systemBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemBarsPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemBarsPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 281
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemBarsPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemBarsPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final systemGesturesPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemGesturesPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemGesturesPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 337
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemGesturesPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$systemGesturesPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final waterfallPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$waterfallPadding$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$waterfallPadding$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 329
    :goto_0
    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$waterfallPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$waterfallPadding$$inlined$windowInsetsPadding$1;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsetsHolder;",
            "+",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 249
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
