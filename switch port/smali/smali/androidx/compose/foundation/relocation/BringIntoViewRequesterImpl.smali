.class final Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;
.super Ljava/lang/Object;
.source "BringIntoViewRequester.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewRequester.kt\nandroidx/compose/foundation/relocation/BringIntoViewRequesterImpl\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,187:1\n1182#2:188\n1161#2,2:189\n460#3,11:191\n*S KotlinDebug\n*F\n+ 1 BringIntoViewRequester.kt\nandroidx/compose/foundation/relocation/BringIntoViewRequesterImpl\n*L\n106#1:188\n106#1:189,2\n109#1:191,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "()V",
        "modifiers",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
        "getModifiers",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "bringIntoView",
        "",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final modifiers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;

    iget v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget v2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->I$1:I

    iget p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->I$0:I

    iget-object v2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->L$1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v4, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p2, p1

    move-object p1, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 192
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_5

    .line 195
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    move v5, v2

    move-object v2, p0

    move p0, v5

    .line 197
    :cond_3
    aget-object v4, v2, p0

    check-cast v4, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    .line 110
    iput-object p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->I$0:I

    iput p0, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->I$1:I

    iput v3, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl$bringIntoView$1;->label:I

    invoke-virtual {v4, p1, v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    add-int/2addr p0, v3

    if-lt p0, p2, :cond_3

    .line 112
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getModifiers()Landroidx/compose/runtime/collection/MutableVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method
