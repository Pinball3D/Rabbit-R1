.class public final Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "LazyGridDsl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,557:1\n154#2:558\n154#2:559\n67#3,3:560\n66#3:563\n67#3,3:570\n66#3:573\n1097#4,6:564\n1097#4,6:574\n*S KotlinDebug\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt\n*L\n66#1:558\n119#1:559\n149#1:560,3\n149#1:563\n182#1:570,3\n182#1:573\n149#1:564,6\n182#1:574,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a~\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a~\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0016H\u0007\u00a2\u0006\u0002\u0010\u001a\u001a&\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001dH\u0002\u001a?\u0010!\u001a\u0019\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0\"\u00a2\u0006\u0002\u0008\u00162\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&\u001a?\u0010\'\u001a\u0019\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0\"\u00a2\u0006\u0002\u0008\u00162\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001a\u00e1\u0001\u0010)\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010**\u00020\u00152\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H*0+2%\u0008\n\u0010,\u001a\u001f\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000200\u0018\u00010\u001420\u0008\n\u00101\u001a*\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000203\u0018\u00010\"\u00a2\u0006\u0002\u0008\u00162%\u0008\n\u00104\u001a\u001f\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u0001000\u001423\u0008\u0004\u00105\u001a-\u0012\u0004\u0012\u000206\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u00087\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u00108\u001a\u00e1\u0001\u0010)\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010**\u00020\u00152\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H*0\u001c2%\u0008\n\u0010,\u001a\u001f\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000200\u0018\u00010\u001420\u0008\n\u00101\u001a*\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000203\u0018\u00010\"\u00a2\u0006\u0002\u0008\u00162%\u0008\n\u00104\u001a\u001f\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u0001000\u001423\u0008\u0004\u00105\u001a-\u0012\u0004\u0012\u000206\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u00087\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u00109\u001a\u00b5\u0002\u0010:\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010**\u00020\u00152\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H*0+2:\u0008\n\u0010,\u001a4\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000200\u0018\u00010\"2E\u0008\n\u00101\u001a?\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000203\u0018\u00010<\u00a2\u0006\u0002\u0008\u00162:\u0008\u0006\u00104\u001a4\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u0001000\"2H\u0008\u0004\u00105\u001aB\u0012\u0004\u0012\u000206\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00010<\u00a2\u0006\u0002\u00087\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=\u001a\u00b5\u0002\u0010:\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010**\u00020\u00152\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H*0\u001c2:\u0008\n\u0010,\u001a4\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000200\u0018\u00010\"2E\u0008\n\u00101\u001a?\u0012\u0004\u0012\u000202\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u000203\u0018\u00010<\u00a2\u0006\u0002\u0008\u00162:\u0008\u0006\u00104\u001a4\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u0001000\"2H\u0008\u0004\u00105\u001aB\u0012\u0004\u0012\u000206\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u0011H*\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00010<\u00a2\u0006\u0002\u00087\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006?"
    }
    d2 = {
        "LazyHorizontalGrid",
        "",
        "rows",
        "Landroidx/compose/foundation/lazy/grid/GridCells;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "LazyVerticalGrid",
        "columns",
        "(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "calculateCellsCrossAxisSizeImpl",
        "",
        "",
        "gridSize",
        "slotCount",
        "spacing",
        "rememberColumnWidthSums",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
        "(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;",
        "rememberRowHeightSums",
        "(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;",
        "items",
        "T",
        "",
        "key",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "span",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
        "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
        "contentType",
        "itemContent",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "itemsIndexed",
        "index",
        "Lkotlin/Function3;",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V",
        "foundation_release"
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
.method public static final LazyHorizontalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    move/from16 v15, p11

    move/from16 v14, p12

    const-string v2, "rows"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7e93b31a

    move-object/from16 v3, p10

    .line 127
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const-string v3, "C(LazyHorizontalGrid)P(6,4,7,1,5,3,9,2,8)117@5477L23,123@5834L15,128@5962L64,127@5936L475:LazyGridDsl.kt#7791vq"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v6, p2

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v3, v7

    goto :goto_6

    :cond_8
    move-object/from16 v6, p2

    :goto_6
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_7

    :cond_a
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v3, v9

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v8, p3

    :goto_9
    and-int/lit8 v9, v14, 0x10

    const v10, 0xe000

    if-eqz v9, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_b

    :cond_c
    and-int v11, v15, v10

    if-nez v11, :cond_e

    move/from16 v11, p4

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_a

    :cond_d
    const/16 v12, 0x2000

    :goto_a
    or-int/2addr v3, v12

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v11, p4

    :goto_c
    const/high16 v12, 0x70000

    and-int/2addr v12, v15

    if-nez v12, :cond_11

    and-int/lit8 v12, v14, 0x20

    if-nez v12, :cond_f

    move-object/from16 v12, p5

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_d

    :cond_f
    move-object/from16 v12, p5

    :cond_10
    const/high16 v16, 0x10000

    :goto_d
    or-int v3, v3, v16

    goto :goto_e

    :cond_11
    move-object/from16 v12, p5

    :goto_e
    and-int/lit8 v16, v14, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v3, v3, v18

    move-object/from16 v10, p6

    goto :goto_10

    :cond_12
    and-int v18, v15, v17

    move-object/from16 v10, p6

    if-nez v18, :cond_14

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v18, 0x80000

    :goto_f
    or-int v3, v3, v18

    :cond_14
    :goto_10
    const/high16 v18, 0x1c00000

    and-int v19, v15, v18

    if-nez v19, :cond_17

    and-int/lit16 v2, v14, 0x80

    if-nez v2, :cond_15

    move-object/from16 v2, p7

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v2, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_11
    or-int v3, v3, v20

    goto :goto_12

    :cond_17
    move-object/from16 v2, p7

    :goto_12
    and-int/lit16 v2, v14, 0x100

    const/high16 v20, 0xe000000

    if-eqz v2, :cond_18

    const/high16 v21, 0x6000000

    or-int v3, v3, v21

    move/from16 v5, p8

    goto :goto_14

    :cond_18
    and-int v21, v15, v20

    move/from16 v5, p8

    if-nez v21, :cond_1a

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v21, 0x2000000

    :goto_13
    or-int v3, v3, v21

    :cond_1a
    :goto_14
    and-int/lit16 v5, v14, 0x200

    const/high16 v21, 0x70000000

    if-eqz v5, :cond_1b

    const/high16 v5, 0x30000000

    :goto_15
    or-int/2addr v3, v5

    goto :goto_16

    :cond_1b
    and-int v5, v15, v21

    if-nez v5, :cond_1d

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/high16 v5, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v5, 0x10000000

    goto :goto_15

    :cond_1d
    :goto_16
    const v5, 0x5b6db6db

    and-int/2addr v5, v3

    const v0, 0x12492492

    if-ne v5, v0, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_17

    .line 141
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v9, p8

    move-object v3, v6

    move-object v4, v8

    move-object v7, v10

    move v5, v11

    move-object v6, v12

    move-object/from16 v21, v13

    move-object/from16 v8, p7

    goto/16 :goto_23

    .line 127
    :cond_1f
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v5, -0x70001

    if-eqz v0, :cond_24

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_18

    .line 125
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_21

    and-int/lit16 v3, v3, -0x381

    :cond_21
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_22

    and-int/2addr v3, v5

    :cond_22
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_23

    const v0, -0x1c00001

    and-int/2addr v3, v0

    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v25, p7

    move/from16 v26, p8

    move-object/from16 v22, v6

    move/from16 v23, v11

    move-object/from16 v24, v12

    move-object v12, v8

    move-object v11, v10

    goto/16 :goto_22

    :cond_24
    :goto_18
    if-eqz v4, :cond_25

    .line 117
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_25
    move-object/from16 v0, p1

    :goto_19
    and-int/lit8 v4, v14, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    const/4 v4, 0x3

    .line 118
    invoke-static {v5, v5, v13, v5, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v4

    and-int/lit16 v3, v3, -0x381

    goto :goto_1a

    :cond_26
    move-object v4, v6

    :goto_1a
    if-eqz v7, :cond_27

    int-to-float v6, v5

    .line 559
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 119
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    goto :goto_1b

    :cond_27
    move-object v6, v8

    :goto_1b
    if-eqz v9, :cond_28

    goto :goto_1c

    :cond_28
    move v5, v11

    :goto_1c
    and-int/lit8 v7, v14, 0x20

    if-eqz v7, :cond_2a

    .line 122
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    if-nez v5, :cond_29

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v7

    goto :goto_1d

    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v7

    :goto_1d
    const v8, -0x70001

    and-int/2addr v3, v8

    goto :goto_1e

    :cond_2a
    move-object v7, v12

    :goto_1e
    if-eqz v16, :cond_2b

    .line 123
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v8

    goto :goto_1f

    :cond_2b
    move-object v8, v10

    :goto_1f
    and-int/lit16 v9, v14, 0x80

    if-eqz v9, :cond_2c

    .line 124
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v10, 0x6

    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v9

    const v10, -0x1c00001

    and-int/2addr v3, v10

    goto :goto_20

    :cond_2c
    move-object/from16 v9, p7

    :goto_20
    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    move/from16 v26, v2

    goto :goto_21

    :cond_2d
    move/from16 v26, p8

    :goto_21
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object v12, v6

    move-object/from16 v24, v7

    move-object v11, v8

    move-object/from16 v25, v9

    .line 125
    :goto_22
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v4, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:114)"

    const v5, 0x7e93b31a

    .line 127
    invoke-static {v5, v3, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    and-int/lit8 v2, v3, 0xe

    shr-int/lit8 v4, v3, 0xf

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    shr-int/lit8 v4, v3, 0x3

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v2, v5

    .line 129
    invoke-static {v1, v11, v12, v13, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->rememberRowHeightSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/4 v7, 0x0

    and-int/lit8 v2, v4, 0xe

    const/high16 v6, 0x30000

    or-int/2addr v2, v6

    and-int/lit8 v6, v4, 0x70

    or-int/2addr v2, v6

    and-int/lit16 v6, v3, 0x1c00

    or-int/2addr v2, v6

    const v6, 0xe000

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    and-int v6, v4, v17

    or-int/2addr v2, v6

    and-int v4, v4, v18

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x6

    and-int v4, v4, v20

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0xc

    and-int v4, v4, v21

    or-int v16, v2, v4

    shr-int/lit8 v2, v3, 0x1b

    and-int/lit8 v17, v2, 0xe

    const/16 v18, 0x0

    move-object v2, v0

    move-object/from16 v3, v22

    move-object v4, v5

    move-object v5, v12

    move/from16 v6, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    move-object v10, v11

    move-object/from16 v19, v11

    move-object/from16 v11, v24

    move-object/from16 v20, v12

    move-object/from16 v12, p9

    move-object/from16 v21, v13

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    .line 128
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object v2, v0

    move-object/from16 v7, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    move/from16 v9, v26

    .line 141
    :goto_23
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_30

    goto :goto_24

    :cond_30
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_24
    return-void
.end method

.method public static final LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    move/from16 v15, p11

    move/from16 v14, p12

    const-string v2, "columns"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x588990d0

    move-object/from16 v3, p10

    .line 74
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const-string v3, "C(LazyVerticalGrid)P(!1,5,7,2,6,9,4,3,8)64@2980L23,70@3340L15,75@3468L71,74@3442L481:LazyGridDsl.kt#7791vq"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v6, p2

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v3, v7

    goto :goto_6

    :cond_8
    move-object/from16 v6, p2

    :goto_6
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_7

    :cond_a
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v3, v9

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v8, p3

    :goto_9
    and-int/lit8 v9, v14, 0x10

    const v10, 0xe000

    if-eqz v9, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_b

    :cond_c
    and-int v11, v15, v10

    if-nez v11, :cond_e

    move/from16 v11, p4

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_a

    :cond_d
    const/16 v12, 0x2000

    :goto_a
    or-int/2addr v3, v12

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v11, p4

    :goto_c
    const/high16 v12, 0x70000

    and-int/2addr v12, v15

    if-nez v12, :cond_11

    and-int/lit8 v12, v14, 0x20

    if-nez v12, :cond_f

    move-object/from16 v12, p5

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_d

    :cond_f
    move-object/from16 v12, p5

    :cond_10
    const/high16 v16, 0x10000

    :goto_d
    or-int v3, v3, v16

    goto :goto_e

    :cond_11
    move-object/from16 v12, p5

    :goto_e
    and-int/lit8 v16, v14, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v3, v3, v18

    move-object/from16 v10, p6

    goto :goto_10

    :cond_12
    and-int v18, v15, v17

    move-object/from16 v10, p6

    if-nez v18, :cond_14

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v18, 0x80000

    :goto_f
    or-int v3, v3, v18

    :cond_14
    :goto_10
    const/high16 v18, 0x1c00000

    and-int v19, v15, v18

    if-nez v19, :cond_17

    and-int/lit16 v2, v14, 0x80

    if-nez v2, :cond_15

    move-object/from16 v2, p7

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v2, p7

    :cond_16
    const/high16 v20, 0x400000

    :goto_11
    or-int v3, v3, v20

    goto :goto_12

    :cond_17
    move-object/from16 v2, p7

    :goto_12
    and-int/lit16 v2, v14, 0x100

    const/high16 v20, 0xe000000

    if-eqz v2, :cond_18

    const/high16 v21, 0x6000000

    or-int v3, v3, v21

    move/from16 v5, p8

    goto :goto_14

    :cond_18
    and-int v21, v15, v20

    move/from16 v5, p8

    if-nez v21, :cond_1a

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v21, 0x2000000

    :goto_13
    or-int v3, v3, v21

    :cond_1a
    :goto_14
    and-int/lit16 v5, v14, 0x200

    const/high16 v21, 0x70000000

    if-eqz v5, :cond_1b

    const/high16 v5, 0x30000000

    :goto_15
    or-int/2addr v3, v5

    goto :goto_16

    :cond_1b
    and-int v5, v15, v21

    if-nez v5, :cond_1d

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/high16 v5, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v5, 0x10000000

    goto :goto_15

    :cond_1d
    :goto_16
    const v5, 0x5b6db6db

    and-int/2addr v5, v3

    const v0, 0x12492492

    if-ne v5, v0, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_17

    .line 88
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v9, p8

    move-object v3, v6

    move-object v4, v8

    move-object v7, v10

    move v5, v11

    move-object v6, v12

    move-object/from16 v21, v13

    move-object/from16 v8, p7

    goto/16 :goto_23

    .line 74
    :cond_1f
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v5, -0x70001

    if-eqz v0, :cond_24

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_18

    .line 72
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_21

    and-int/lit16 v3, v3, -0x381

    :cond_21
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_22

    and-int/2addr v3, v5

    :cond_22
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_23

    const v0, -0x1c00001

    and-int/2addr v3, v0

    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v25, p7

    move/from16 v26, p8

    move-object/from16 v22, v6

    move/from16 v23, v11

    move-object/from16 v24, v12

    move-object v12, v8

    move-object v11, v10

    goto/16 :goto_22

    :cond_24
    :goto_18
    if-eqz v4, :cond_25

    .line 64
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_25
    move-object/from16 v0, p1

    :goto_19
    and-int/lit8 v4, v14, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    const/4 v4, 0x3

    .line 65
    invoke-static {v5, v5, v13, v5, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v4

    and-int/lit16 v3, v3, -0x381

    goto :goto_1a

    :cond_26
    move-object v4, v6

    :goto_1a
    if-eqz v7, :cond_27

    int-to-float v6, v5

    .line 558
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 66
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    goto :goto_1b

    :cond_27
    move-object v6, v8

    :goto_1b
    if-eqz v9, :cond_28

    goto :goto_1c

    :cond_28
    move v5, v11

    :goto_1c
    and-int/lit8 v7, v14, 0x20

    if-eqz v7, :cond_2a

    .line 69
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    if-nez v5, :cond_29

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    goto :goto_1d

    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    :goto_1d
    const v8, -0x70001

    and-int/2addr v3, v8

    goto :goto_1e

    :cond_2a
    move-object v7, v12

    :goto_1e
    if-eqz v16, :cond_2b

    .line 70
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v8

    goto :goto_1f

    :cond_2b
    move-object v8, v10

    :goto_1f
    and-int/lit16 v9, v14, 0x80

    if-eqz v9, :cond_2c

    .line 71
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v10, 0x6

    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v9

    const v10, -0x1c00001

    and-int/2addr v3, v10

    goto :goto_20

    :cond_2c
    move-object/from16 v9, p7

    :goto_20
    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    move/from16 v26, v2

    goto :goto_21

    :cond_2d
    move/from16 v26, p8

    :goto_21
    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object v12, v6

    move-object/from16 v24, v7

    move-object v11, v8

    move-object/from16 v25, v9

    .line 72
    :goto_22
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v4, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:61)"

    const v5, 0x588990d0

    .line 74
    invoke-static {v5, v3, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    and-int/lit8 v2, v3, 0xe

    shr-int/lit8 v4, v3, 0xf

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    shr-int/lit8 v4, v3, 0x3

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v2, v5

    .line 76
    invoke-static {v1, v11, v12, v13, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->rememberColumnWidthSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/4 v7, 0x1

    and-int/lit8 v2, v4, 0xe

    const/high16 v6, 0x30000

    or-int/2addr v2, v6

    and-int/lit8 v6, v4, 0x70

    or-int/2addr v2, v6

    and-int/lit16 v6, v3, 0x1c00

    or-int/2addr v2, v6

    const v6, 0xe000

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    and-int v6, v4, v17

    or-int/2addr v2, v6

    and-int v4, v4, v18

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x9

    and-int v6, v4, v20

    or-int/2addr v2, v6

    and-int v4, v4, v21

    or-int v16, v2, v4

    shr-int/lit8 v2, v3, 0x1b

    and-int/lit8 v17, v2, 0xe

    const/16 v18, 0x0

    move-object v2, v0

    move-object/from16 v3, v22

    move-object v4, v5

    move-object v5, v12

    move/from16 v6, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    move-object/from16 v10, v24

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v12, p9

    move-object/from16 v21, v13

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    .line 75
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2f
    move-object v2, v0

    move-object/from16 v7, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    move/from16 v9, v26

    .line 88
    :goto_23
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_30

    goto :goto_24

    :cond_30
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_24
    return-void
.end method

.method public static final synthetic access$calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    .line 363
    div-int p2, p0, p1

    .line 364
    rem-int/2addr p0, p1

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    if-ge v2, p0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-int/2addr v3, p2

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 365
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final items(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 450
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 455
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const p1, 0x29b3c0fe

    const/4 p5, 0x1

    invoke-static {p1, p5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Lkotlin/jvm/functions/Function4;

    move p1, v0

    .line 450
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static final items(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 516
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 521
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const p1, 0x184ae7d1

    const/4 p5, 0x1

    invoke-static {p1, p5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Lkotlin/jvm/functions/Function4;

    move p1, v0

    .line 516
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 448
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_2
    const-string p6, "<this>"

    .line 444
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_3

    .line 450
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;

    invoke-direct {p2, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_4
    move-object v4, v0

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;

    invoke-direct {p2, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 455
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;-><init>(Lkotlin/jvm/functions/Function4;Ljava/util/List;)V

    const p1, 0x29b3c0fe

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    .line 450
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 514
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$6;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$6;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_2
    const-string p6, "<this>"

    .line 510
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    array-length v2, p1

    if-eqz p2, :cond_3

    .line 516
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;

    invoke-direct {p2, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_4
    move-object v4, v0

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;

    invoke-direct {p2, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 521
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;-><init>(Lkotlin/jvm/functions/Function4;[Ljava/lang/Object;)V

    const p1, 0x184ae7d1

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    .line 516
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 483
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 488
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const p1, 0x49456f69

    const/4 p5, 0x1

    invoke-static {p1, p5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Lkotlin/jvm/functions/Function4;

    move p1, v0

    .line 483
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 549
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function3;[Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 554
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;

    invoke-direct {v1, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const p1, -0x3653b6c2

    const/4 p5, 0x1

    invoke-static {p1, p5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Lkotlin/jvm/functions/Function4;

    move p1, v0

    .line 549
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 481
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$1;

    check-cast p4, Lkotlin/jvm/functions/Function2;

    :cond_2
    const-string p6, "<this>"

    .line 477
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_3

    .line 483
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;

    invoke-direct {p2, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;)V

    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_4
    move-object v4, v0

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;

    invoke-direct {p2, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 488
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;-><init>(Lkotlin/jvm/functions/Function5;Ljava/util/List;)V

    const p1, 0x49456f69

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    .line 483
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 547
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$6;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$6;

    check-cast p4, Lkotlin/jvm/functions/Function2;

    :cond_2
    const-string p6, "<this>"

    .line 543
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    array-length v2, p1

    if-eqz p2, :cond_3

    .line 549
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    check-cast p6, Lkotlin/jvm/functions/Function1;

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;

    invoke-direct {p2, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;-><init>(Lkotlin/jvm/functions/Function3;[Ljava/lang/Object;)V

    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_4
    move-object v4, v0

    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;

    invoke-direct {p2, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 554
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;-><init>(Lkotlin/jvm/functions/Function5;[Ljava/lang/Object;)V

    const p1, -0x3653b6c2

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    .line 549
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method private static final rememberColumnWidthSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
            ">;"
        }
    .end annotation

    const v0, -0x50c843ac

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberColumnWidthSums)P(!1,2)148@6622L992:LazyGridDsl.kt#7791vq"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.grid.rememberColumnWidthSums (LazyGridDsl.kt:144)"

    .line 149
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p4, 0x607fb4c4

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 560
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    .line 561
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    .line 562
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    .line 564
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    .line 565
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_2

    .line 154
    :cond_1
    new-instance p4, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;

    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p4, v0}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object v0, p4

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 567
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 563
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 149
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method private static final rememberRowHeightSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
            ">;"
        }
    .end annotation

    const v0, 0xe4947f5

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberRowHeightSums)P(1,2)181@7812L926:LazyGridDsl.kt#7791vq"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.grid.rememberRowHeightSums (LazyGridDsl.kt:177)"

    .line 182
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p4, 0x607fb4c4

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 570
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    .line 571
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    .line 572
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p4, v0

    .line 574
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_1

    .line 575
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_2

    .line 187
    :cond_1
    new-instance p4, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;

    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p4, v0}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object v0, p4

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 577
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 573
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
