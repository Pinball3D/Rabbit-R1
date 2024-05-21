.class final synthetic Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "LazyStaggeredGridState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "[I>;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    const-string v4, "fillNearestIndices"

    const-string v5, "fillNearestIndices(II)[I"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;->invoke(II)[I

    move-result-object p0

    return-object p0
.end method

.method public final invoke(II)[I
    .locals 0

    .line 135
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->access$fillNearestIndices(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;II)[I

    move-result-object p0

    return-object p0
.end method
