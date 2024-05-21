.class final Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,1664:1\n76#2:1665\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2\n*L\n1088#1:1665\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $actionsRow:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $centeredTitle:Z

.field final synthetic $colors:Landroidx/compose/material3/TopAppBarColors;

.field final synthetic $navigationIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/TopAppBarColors;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/material3/TopAppBarScrollBehavior;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p5, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$centeredTitle:Z

    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$actionsRow:Lkotlin/jvm/functions/Function2;

    iput p8, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$$dirty:I

    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1087
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v1, p2

    const-string v2, "C*1087@49625L7,1091@49775L890:AppBar.kt#uh7d8r"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1088
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1111
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 1088
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SingleRowTopAppBar.<anonymous> (AppBar.kt:1086)"

    const v4, 0x16776c2e

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 1665
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    iget-object v2, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    .line 1088
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 1089
    sget-object v3, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarSmallTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-float/2addr v2, v1

    .line 1093
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 1094
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1096
    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    .line 1098
    invoke-virtual {v3}, Landroidx/compose/material3/TopAppBarColors;->getNavigationIconContentColor-0d7_KjU$material3_release()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    .line 1099
    invoke-virtual {v5}, Landroidx/compose/material3/TopAppBarColors;->getTitleContentColor-0d7_KjU$material3_release()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    .line 1100
    invoke-virtual {v7}, Landroidx/compose/material3/TopAppBarColors;->getActionIconContentColor-0d7_KjU$material3_release()J

    move-result-wide v7

    iget-object v9, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1104
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-boolean v14, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$centeredTitle:Z

    if-eqz v14, :cond_4

    .line 1106
    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v14}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    goto :goto_2

    :cond_4
    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v14}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v14

    :goto_2
    move-object/from16 v18, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v14, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v14

    iget-object v14, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$actionsRow:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v14

    iget v0, v0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2;->$$dirty:I

    shl-int/lit8 v14, v0, 0xc

    const/high16 v19, 0x70000

    and-int v14, v14, v19

    const/high16 v19, 0x6c00000

    or-int v14, v14, v19

    const/high16 v19, 0x380000

    shl-int/lit8 v20, v0, 0xc

    and-int v19, v20, v19

    or-int v19, v14, v19

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v0, v0, 0xc36

    move/from16 v20, v0

    move-object/from16 v13, v18

    move-object/from16 v18, p1

    const/4 v14, 0x0

    .line 1092
    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/AppBarKt;->access$TopAppBarLayout-kXwM9vE(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_3
    return-void
.end method
