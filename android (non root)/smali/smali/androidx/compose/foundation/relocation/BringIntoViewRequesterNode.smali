.class public final Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;
.super Landroidx/compose/foundation/relocation/BringIntoViewChildNode;
.source "BringIntoViewRequester.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewRequester.kt\nandroidx/compose/foundation/relocation/BringIntoViewRequesterNode\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,187:1\n728#2,2:188\n735#2,2:190\n*S KotlinDebug\n*F\n+ 1 BringIntoViewRequester.kt\nandroidx/compose/foundation/relocation/BringIntoViewRequesterNode\n*L\n159#1:188,2\n166#1:190,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
        "Landroidx/compose/foundation/relocation/BringIntoViewChildNode;",
        "requester",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V",
        "bringIntoView",
        "",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disposeRequester",
        "onAttach",
        "onDetach",
        "updateRequester",
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
.field private requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V
    .locals 1

    const-string v0, "requester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Landroidx/compose/foundation/relocation/BringIntoViewChildNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    return-void
.end method

.method private final disposeRequester()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 165
    instance-of v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.relocation.BringIntoViewRequesterImpl"

    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->getModifiers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 179
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->getParent()Landroidx/compose/foundation/relocation/BringIntoViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance v2, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;

    invoke-direct {v2, p1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode$bringIntoView$2;-><init>(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2, p2}, Landroidx/compose/foundation/relocation/BringIntoViewParent;->bringChildIntoView(Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public onAttach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 153
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->updateRequester(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 171
    invoke-direct {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->disposeRequester()V

    return-void
.end method

.method public final updateRequester(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V
    .locals 1

    const-string v0, "requester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->disposeRequester()V

    .line 158
    instance-of v0, p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->getModifiers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->requester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    return-void
.end method
