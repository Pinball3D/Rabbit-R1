.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Landroidx/compose/material3/AnchorChangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/material3/AnchorChangeHandler<",
        "Landroidx/compose/material3/SheetValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "previousTarget",
        "Landroidx/compose/material3/SheetValue;",
        "previousAnchors",
        "",
        "",
        "newAnchors"
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
.field final synthetic $animateTo:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snapTo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$state:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$animateTo:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$snapTo:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnchorsChanged(Landroidx/compose/material3/SheetValue;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/util/Map<",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "previousTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousAnchors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnchors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 391
    sget-object v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/material3/SheetValue;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 394
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    sget-object p1, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    goto :goto_1

    .line 396
    :cond_2
    sget-object p1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    goto :goto_1

    :cond_3
    sget-object p1, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    goto :goto_1

    .line 392
    :cond_4
    sget-object p1, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    .line 400
    :goto_1
    invoke-static {p3, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 401
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$state:Landroidx/compose/material3/SheetState;

    .line 402
    invoke-virtual {p3}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/material3/SwipeableV2State;->isAnimationRunning()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$snapTo:Lkotlin/jvm/functions/Function1;

    .line 407
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$animateTo:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->$state:Landroidx/compose/material3/SheetState;

    .line 404
    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getLastVelocity()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic onAnchorsChanged(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 389
    check-cast p1, Landroidx/compose/material3/SheetValue;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;->onAnchorsChanged(Landroidx/compose/material3/SheetValue;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
