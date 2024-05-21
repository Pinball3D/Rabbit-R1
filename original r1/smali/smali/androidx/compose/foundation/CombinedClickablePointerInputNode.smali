.class final Landroidx/compose/foundation/CombinedClickablePointerInputNode;
.super Landroidx/compose/foundation/AbstractClickablePointerInputNode;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/CombinedClickablePointerInputNode\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,978:1\n157#2:979\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/CombinedClickablePointerInputNode\n*L\n926#1:979\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007J\u0015\u0010\u000f\u001a\u00020\u0008*\u00020\u0010H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/CombinedClickablePointerInputNode;",
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
        "onLongClick",
        "onDoubleClick",
        "(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
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


# instance fields
.field private onDoubleClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
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

    .line 919
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p5, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getOnDoubleClick$p(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 912
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnLongClick$p(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 912
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method protected pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 926
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

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

    .line 926
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setCentreOffset-k-4lQ0M(J)V

    .line 928
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$2;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 931
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    .line 927
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$3;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$5;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$5;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final update(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    .line 953
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 959
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    .line 960
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->setEnabled(Z)V

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    if-nez p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-nez p4, :cond_2

    move v1, p3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eq p2, v1, :cond_3

    move p1, p3

    :cond_3
    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-nez p2, :cond_4

    move p2, p3

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    if-nez p5, :cond_5

    move v0, p3

    :cond_5
    if-eq p2, v0, :cond_6

    goto :goto_4

    :cond_6
    move p3, p1

    :goto_4
    iput-object p5, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-eqz p3, :cond_7

    .line 975
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->resetPointerInputHandler()V

    :cond_7
    return-void
.end method
