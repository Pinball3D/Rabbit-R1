.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\r\u001a\u00020\u000eH\u0016R \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "height",
        "getHeight",
        "()I",
        "width",
        "getWidth",
        "placeChildren",
        "",
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


# instance fields
.field final synthetic $indexAfterMeasure:I

.field final synthetic $result:Landroidx/compose/ui/layout/MeasureResult;

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$indexAfterMeasure:I

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentLines()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 875
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 873
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 871
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public placeChildren()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$indexAfterMeasure:I

    .line 878
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$setCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 879
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 880
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeOrReuseStartingFromIndex(I)V

    return-void
.end method
