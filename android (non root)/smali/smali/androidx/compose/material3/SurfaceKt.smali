.class public final Landroidx/compose/material3/SurfaceKt;
.super Ljava/lang/Object;
.source "Surface.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material3/SurfaceKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,491:1\n154#2:492\n154#2:493\n154#2:496\n154#2:497\n154#2:507\n154#2:508\n154#2:518\n154#2:519\n76#3:494\n76#3:505\n76#3:516\n76#3:527\n51#4:495\n51#4:506\n51#4:517\n51#4:528\n25#5:498\n25#5:509\n25#5:520\n1114#6,6:499\n1114#6,6:510\n1114#6,6:521\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material3/SurfaceKt\n*L\n105#1:492\n106#1:493\n209#1:496\n210#1:497\n318#1:507\n319#1:508\n428#1:518\n429#1:519\n110#1:494\n215#1:505\n324#1:516\n434#1:527\n110#1:495\n215#1:506\n324#1:517\n434#1:528\n212#1:498\n321#1:509\n431#1:520\n212#1:499,6\n321#1:510,6\n431#1:521,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a\u0092\u0001\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001ap\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\u009a\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u00a0\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u000c2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060#2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010$\u001a%\u0010%\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0002H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001a;\u0010)\u001a\u00020\n*\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0013\u001a\u00020\u0002H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006-"
    }
    d2 = {
        "LocalAbsoluteTonalElevation",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/ui/unit/Dp;",
        "getLocalAbsoluteTonalElevation",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Surface",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "shadowElevation",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "Surface-o_FOJdg",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "Surface-T9BRK9s",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "selected",
        "Surface-d85dljk",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "checked",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "surfaceColorAtElevation",
        "elevation",
        "surfaceColorAtElevation-CLU3JFs",
        "(JFLandroidx/compose/runtime/Composer;I)J",
        "surface",
        "backgroundColor",
        "surface-8ww4TTg",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;",
        "material3_release"
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
.field private static final LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 490
    sget-object v0, Landroidx/compose/material3/SurfaceKt$LocalAbsoluteTonalElevation$1;->INSTANCE:Landroidx/compose/material3/SurfaceKt$LocalAbsoluteTonalElevation$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Landroidx/compose/foundation/BorderStroke;",
            "Lkotlin/jvm/functions/Function2<",
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

    move-object/from16 v0, p10

    move/from16 v7, p11

    const-string v1, "content"

    move-object/from16 v10, p9

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x1ea1368d

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(Surface)P(4,6,1:c#ui.graphics.Color,3:c#ui.graphics.Color,7:c#ui.unit.Dp,5:c#ui.unit.Dp)102@5102L11,103@5149L22,*109@5366L7,110@5395L784:Surface.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p12, 0x1

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v3, p12, 0x2

    if-eqz v3, :cond_1

    .line 102
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    :goto_1
    and-int/lit8 v4, p12, 0x4

    if-eqz v4, :cond_2

    .line 103
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v5, 0x6

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p2

    :goto_2
    and-int/lit8 v6, p12, 0x8

    if-eqz v6, :cond_3

    shr-int/lit8 v6, v7, 0x6

    and-int/lit8 v6, v6, 0xe

    .line 104
    invoke-static {v4, v5, v0, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p4

    :goto_3
    and-int/lit8 v6, p12, 0x10

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    int-to-float v6, v11

    .line 492
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v12, p12, 0x20

    if-eqz v12, :cond_5

    int-to-float v12, v11

    .line 493
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    goto :goto_5

    :cond_5
    move/from16 v12, p7

    :goto_5
    and-int/lit8 v13, p12, 0x40

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p8

    .line 107
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, -0x1

    const-string v15, "androidx.compose.material3.Surface (Surface.kt:99)"

    .line 109
    invoke-static {v1, v7, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_7
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-object v14, v1

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const v15, 0x789c5f52

    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    .line 494
    invoke-static {v0, v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v11, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v11}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v11

    add-float/2addr v11, v6

    .line 495
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    const/4 v11, 0x2

    new-array v11, v11, [Landroidx/compose/runtime/ProvidedValue;

    .line 112
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v11, v9

    .line 113
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v11, v14

    .line 114
    new-instance v15, Landroidx/compose/material3/SurfaceKt$Surface$1;

    move-object v1, v15

    move/from16 v7, p11

    move-object v8, v13

    move v9, v12

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;)V

    const v1, -0x43a11cd

    invoke-static {v0, v1, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x38

    .line 111
    invoke-static {v11, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p14

    move/from16 v7, p15

    move/from16 v1, p17

    const-string v2, "onClick"

    move-object/from16 v13, p1

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    move-object/from16 v14, p13

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x20344540

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(Surface)P(8,7,6,4,10,1:c#ui.graphics.Color,3:c#ui.graphics.Color,11:c#ui.unit.Dp,9:c#ui.unit.Dp!1,5)315@16017L11,316@16064L22,320@16235L39,*323@16372L7,324@16401L959:Surface.kt#uh7d8r"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 313
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move/from16 v12, p3

    :goto_1
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_2

    .line 315
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_3

    .line 316
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v5, v0, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_4

    shr-int/lit8 v8, v7, 0xf

    and-int/lit8 v8, v8, 0xe

    .line 317
    invoke-static {v5, v6, v0, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p7

    :goto_4
    and-int/lit16 v10, v1, 0x80

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    int-to-float v10, v11

    .line 507
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v10, p9

    :goto_5
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_6

    int-to-float v15, v11

    .line 508
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    goto :goto_6

    :cond_6
    move/from16 v15, p10

    :goto_6
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p11

    :goto_7
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const v1, -0x1d58f75c

    .line 321
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 510
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 511
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 321
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 513
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 509
    :cond_8
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v1

    goto :goto_8

    :cond_9
    move-object/from16 v16, p12

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "androidx.compose.material3.Surface (Surface.kt:309)"

    move/from16 v2, p16

    const v13, 0x20344540

    .line 323
    invoke-static {v13, v7, v2, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_9

    :cond_a
    move/from16 v2, p16

    :goto_9
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 324
    move-object v13, v1

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    .line 516
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    add-float/2addr v2, v10

    .line 517
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    const/4 v2, 0x2

    new-array v13, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 326
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v13, v8

    .line 327
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v13, v17

    .line 328
    new-instance v10, Landroidx/compose/material3/SurfaceKt$Surface$5;

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move/from16 v7, p15

    move-object v8, v11

    move v9, v15

    move-object v15, v10

    move/from16 v10, p0

    move-object/from16 v11, v16

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move-object/from16 v14, p13

    move-object/from16 v19, v15

    move/from16 v15, p16

    invoke-direct/range {v1 .. v15}, Landroidx/compose/material3/SurfaceKt$Surface$5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    const v1, -0x45699780

    move-object/from16 v2, v19

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x38

    move-object/from16 v3, v18

    .line 325
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final Surface-d85dljk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p14

    move/from16 v7, p15

    move/from16 v1, p17

    const-string v2, "onCheckedChange"

    move-object/from16 v13, p1

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    move-object/from16 v14, p13

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x6fe6e121

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(Surface)P(1,8,7,5,10,2:c#ui.graphics.Color,4:c#ui.graphics.Color,11:c#ui.unit.Dp,9:c#ui.unit.Dp!1,6)425@21669L11,426@21716L22,430@21887L39,*433@22024L7,434@22053L969:Surface.kt#uh7d8r"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 423
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move/from16 v12, p3

    :goto_1
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_2

    .line 425
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_3

    .line 426
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v5, v0, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_4

    shr-int/lit8 v8, v7, 0xf

    and-int/lit8 v8, v8, 0xe

    .line 427
    invoke-static {v5, v6, v0, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p7

    :goto_4
    and-int/lit16 v10, v1, 0x80

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    int-to-float v10, v11

    .line 518
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v10, p9

    :goto_5
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_6

    int-to-float v15, v11

    .line 519
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    goto :goto_6

    :cond_6
    move/from16 v15, p10

    :goto_6
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p11

    :goto_7
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const v1, -0x1d58f75c

    .line 431
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 521
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 522
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 431
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 524
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 520
    :cond_8
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v1

    goto :goto_8

    :cond_9
    move-object/from16 v16, p12

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "androidx.compose.material3.Surface (Surface.kt:419)"

    move/from16 v2, p16

    const v13, -0x6fe6e121

    .line 433
    invoke-static {v13, v7, v2, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_9

    :cond_a
    move/from16 v2, p16

    :goto_9
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 434
    move-object v13, v1

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    .line 527
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    add-float/2addr v2, v10

    .line 528
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    const/4 v2, 0x2

    new-array v13, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 436
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v13, v8

    .line 437
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v13, v17

    .line 438
    new-instance v10, Landroidx/compose/material3/SurfaceKt$Surface$7;

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move/from16 v7, p15

    move-object v8, v11

    move v9, v15

    move-object v15, v10

    move/from16 v10, p0

    move-object/from16 v11, v16

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move-object/from16 v14, p13

    move-object/from16 v19, v15

    move/from16 v15, p16

    invoke-direct/range {v1 .. v15}, Landroidx/compose/material3/SurfaceKt$Surface$7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    const v1, 0x2a7b421f

    move-object/from16 v2, v19

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x38

    move-object/from16 v3, v18

    .line 435
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p13

    move/from16 v7, p14

    move/from16 v1, p16

    const-string v2, "onClick"

    move-object/from16 v12, p0

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    move-object/from16 v13, p12

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x2f12abe4

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(Surface)P(7,6,4,9,1:c#ui.graphics.Color,3:c#ui.graphics.Color,10:c#ui.unit.Dp,8:c#ui.unit.Dp!1,5)206@10475L11,207@10522L22,211@10693L39,*214@10830L7,215@10859L917:Surface.kt#uh7d8r"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    .line 204
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v11, p2

    :goto_1
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_2

    .line 206
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_3

    .line 207
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v5, v0, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_4

    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0xe

    .line 208
    invoke-static {v5, v6, v0, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p6

    :goto_4
    and-int/lit8 v10, v1, 0x40

    const/4 v14, 0x0

    if-eqz v10, :cond_5

    int-to-float v10, v14

    .line 496
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v15, v1, 0x80

    if-eqz v15, :cond_6

    int-to-float v15, v14

    .line 497
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    goto :goto_6

    :cond_6
    move/from16 v15, p9

    :goto_6
    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p10

    :goto_7
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    const v1, -0x1d58f75c

    .line 212
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 499
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 500
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 212
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 502
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 498
    :cond_8
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v1

    goto :goto_8

    :cond_9
    move-object/from16 v16, p11

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "androidx.compose.material3.Surface (Surface.kt:201)"

    move/from16 v2, p15

    const v12, -0x2f12abe4

    .line 214
    invoke-static {v12, v7, v2, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_9

    :cond_a
    move/from16 v2, p15

    :goto_9
    sget-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 215
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    .line 505
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    add-float/2addr v2, v10

    .line 506
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    const/4 v2, 0x2

    new-array v12, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 217
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v12, v8

    .line 218
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v12, v2

    .line 219
    new-instance v10, Landroidx/compose/material3/SurfaceKt$Surface$3;

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move/from16 v7, p14

    move-object v8, v14

    move v9, v15

    move-object v15, v10

    move-object/from16 v10, v16

    move-object v14, v12

    move-object/from16 v12, p0

    move-object/from16 v13, p12

    move-object/from16 v17, v14

    move/from16 v14, p15

    invoke-direct/range {v1 .. v14}, Landroidx/compose/material3/SurfaceKt$Surface$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    const v1, 0x4c46b75c    # 5.209227E7f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x38

    move-object/from16 v3, v17

    .line 216
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final synthetic access$surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/SurfaceKt;->surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$surfaceColorAtElevation-CLU3JFs(JFLandroidx/compose/runtime/Composer;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SurfaceKt;->surfaceColorAtElevation-CLU3JFs(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getLocalAbsoluteTonalElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method private static final surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p5

    move-object v2, p1

    .line 470
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 471
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p5, Landroidx/compose/ui/Modifier;

    invoke-static {p5, p4, p1}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p4

    goto :goto_0

    :cond_0
    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p4, Landroidx/compose/ui/Modifier;

    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 472
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 473
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final surfaceColorAtElevation-CLU3JFs(JFLandroidx/compose/runtime/Composer;I)J
    .locals 3

    const v0, -0x7bf9080a

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(surfaceColorAtElevation)P(0:c#ui.graphics.Color,1:c#ui.unit.Dp)476@23481L11,477@23526L11:Surface.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.surfaceColorAtElevation (Surface.kt:475)"

    .line 476
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 477
    :cond_0
    sget-object p4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p4, p3, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 478
    sget-object p0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p0, p3, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/compose/material3/ColorSchemeKt;->surfaceColorAtElevation-3ABfNKs(Landroidx/compose/material3/ColorScheme;F)J

    move-result-wide p0

    .line 477
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide p0
.end method
