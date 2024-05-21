.class final Landroidx/compose/foundation/ClickablePointerInputNode;
.super Landroidx/compose/foundation/AbstractClickablePointerInputNode;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickablePointerInputNode\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,978:1\n157#2:979\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickablePointerInputNode\n*L\n888#1:979\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0015\u0010\r\u001a\u00020\u0008*\u00020\u000eH\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/ClickablePointerInputNode;",
        "Landroidx/compose/foundation/AbstractClickablePointerInputNode;",
        "enabled",
        "",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "onClick",
        "Lkotlin/Function0;",
        "",
        "interactionData",
        "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
        "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;)V",
        "update",
        "pointerInput",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
            ")V"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 881
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Landroidx/compose/foundation/ClickablePointerInputNode;->getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->getCenter-ozmzZPI(J)J

    move-result-wide v1

    .line 979
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    .line 888
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setCentreOffset-k-4lQ0M(J)V

    .line 889
    new-instance v0, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$2;-><init>(Landroidx/compose/foundation/ClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    new-instance v1, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/ClickablePointerInputNode$pointerInput$3;-><init>(Landroidx/compose/foundation/ClickablePointerInputNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapAndPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final update(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickablePointerInputNode;->setEnabled(Z)V

    .line 907
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/ClickablePointerInputNode;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    .line 908
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/ClickablePointerInputNode;->setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-void
.end method
