.class final Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGridSpanLayoutProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
        "invoke",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;)Ljava/lang/Integer;"
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
.field final synthetic $itemIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;->$itemIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemIndex()I

    move-result p1

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;->$itemIndex:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;->invoke(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
