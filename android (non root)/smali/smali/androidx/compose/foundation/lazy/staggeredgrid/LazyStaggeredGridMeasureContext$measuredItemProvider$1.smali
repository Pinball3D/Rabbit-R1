.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;
.super Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;
.source "LazyStaggeredGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "createItem",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "index",
        "",
        "lane",
        "span",
        "key",
        "",
        "contentType",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 189
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;-><init>(ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V

    return-void
.end method


# virtual methods
.method public createItem(IIILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "key"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "placeables"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 206
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->isVertical()Z

    move-result v6

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 207
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getMainAxisSpacing()I

    move-result v7

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 210
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getBeforeContentPadding()I

    move-result v10

    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;->this$0:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 211
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getAfterContentPadding()I

    move-result v11

    move-object v2, v1

    move v3, p1

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p5

    .line 202
    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;-><init>(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;)V

    return-object v1
.end method
