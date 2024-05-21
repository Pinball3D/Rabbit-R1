.class final Landroidx/compose/material3/TimePickerKt$drawSelector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->drawSelector(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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
.field final synthetic $colors:Landroidx/compose/material3/TimePickerColors;

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$state:Landroidx/compose/material3/TimePickerState;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1183
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$drawWithContent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1184
    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerState;->getSelectorPos-RKDOV3M$material3_release()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v3}, Landroidx/compose/material3/TimePickerState;->getSelectorPos-RKDOV3M$material3_release()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .line 1186
    sget-object v4, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialSelectorHandleContainerSize-D9Ej5fM()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v4

    const/4 v5, 0x2

    int-to-float v15, v5

    div-float v16, v4, v15

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    .line 1187
    invoke-virtual {v4}, Landroidx/compose/material3/TimePickerColors;->getSelectorColor-0d7_KjU$material3_release()J

    move-result-wide v32

    .line 1193
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    .line 1194
    sget-object v4, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v13

    .line 1190
    move-object/from16 v34, v1

    check-cast v34, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x38

    const/16 v17, 0x0

    move-object/from16 v4, v34

    move/from16 v7, v16

    move-wide v8, v2

    move/from16 v35, v15

    move-object/from16 v15, v17

    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1198
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 1205
    sget-object v4, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getXor-0nO6VwU()I

    move-result v13

    const/4 v15, 0x0

    move-object/from16 v4, v34

    move-wide/from16 v5, v32

    .line 1201
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1208
    sget-object v4, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialSelectorTrackContainerWidth-D9Ej5fM()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v24

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1211
    invoke-virtual {v4}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v16

    iget-object v5, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1212
    invoke-virtual {v5}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v16

    .line 1210
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 1209
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v22

    .line 1218
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v20

    .line 1222
    sget-object v4, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v29

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0xf0

    const/16 v31, 0x0

    move-object/from16 v17, v34

    move-wide/from16 v18, v32

    .line 1217
    invoke-static/range {v17 .. v31}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1227
    sget-object v4, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialSelectorCenterContainerSize-D9Ej5fM()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v4

    div-float v20, v4, v35

    .line 1228
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x78

    .line 1226
    invoke-static/range {v17 .. v28}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    iget-object v0, v0, Landroidx/compose/material3/TimePickerKt$drawSelector$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    const/4 v1, 0x1

    .line 1236
    invoke-virtual {v0, v1}, Landroidx/compose/material3/TimePickerColors;->clockDialContentColor-vNxB06k$material3_release(Z)J

    move-result-wide v5

    .line 1237
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getDstOver-0nO6VwU()I

    move-result v13

    move-object/from16 v4, v34

    .line 1233
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method
