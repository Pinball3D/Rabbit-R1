.class final Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBar-Id_Pb_0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt$SearchBar$3$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,746:1\n154#2:747\n*S KotlinDebug\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt$SearchBar$3$1\n*L\n232#1:747\n*E\n"
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
.field final synthetic $animationProgress:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $topPadding:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$topPadding:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$animationProgress:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 230
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "$this$layout"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "measurable"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$topPadding:Landroidx/compose/runtime/State;

    .line 232
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v3

    const/4 v4, 0x0

    int-to-float v4, v4

    .line 747
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    iget-object v5, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$animationProgress:Landroidx/compose/runtime/State;

    .line 232
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/DpKt;->lerp-Md-fbLM(FFF)F

    move-result v3

    invoke-interface {p1, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    .line 234
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->getSearchBarMinWidth()F

    move-result v5

    invoke-interface {p1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 235
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->access$getSearchBarMaxWidth$p()F

    move-result v6

    invoke-interface {p1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    .line 236
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    sget-object v6, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v6

    invoke-interface {p1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 237
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    .line 238
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    .line 239
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    iget-object v8, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$animationProgress:Landroidx/compose/runtime/State;

    .line 241
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-static {v4, v6, v8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v4

    iget-object v0, v0, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1;->$animationProgress:Landroidx/compose/runtime/State;

    .line 243
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v5, v7, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v0

    add-int v5, v0, v3

    .line 245
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v6

    const/4 v8, 0x0

    neg-int v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 246
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v6

    .line 245
    invoke-interface {p2, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    const/4 v6, 0x0

    .line 247
    new-instance v2, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1$1;

    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/SearchBarKt$SearchBar$3$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p1

    move v1, v4

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move v5, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
