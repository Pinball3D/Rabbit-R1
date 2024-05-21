.class public final Landroidx/compose/foundation/gestures/ScrollableState$DefaultImpls;
.super Ljava/lang/Object;
.source "ScrollableState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/ScrollableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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
.method public static getCanScrollBackward(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->access$getCanScrollBackward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z

    move-result p0

    return p0
.end method

.method public static getCanScrollForward(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->access$getCanScrollForward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
