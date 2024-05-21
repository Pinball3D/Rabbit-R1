.class public interface abstract Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008w\u0018\u00002\u00020\u0001J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J0\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00170\u0016\u00a2\u0006\u0002\u0008\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019R\u001b\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R,\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\tX\u00a6\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0005\u0082\u0001\u0001\u001a\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "lookaheadConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getLookaheadConstraints-msEJaDk",
        "()J",
        "lookaheadMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "getLookaheadMeasurePolicy",
        "()Lkotlin/jvm/functions/Function2;",
        "lookaheadSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getLookaheadSize-YbymL2g",
        "measurablesForSlot",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "slotId",
        "",
        "subcompose",
        "content",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$IntermediateMeasureScopeImpl;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getLookaheadConstraints-msEJaDk()J
.end method

.method public abstract getLookaheadMeasurePolicy()Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLookaheadSize-YbymL2g()J
.end method

.method public abstract measurablesForSlot(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation
.end method

.method public subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;->measurablesForSlot(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
