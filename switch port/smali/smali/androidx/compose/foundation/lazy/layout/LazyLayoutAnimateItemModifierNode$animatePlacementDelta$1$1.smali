.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayoutAnimateItemModifierNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/Animatable<",
        "Landroidx/compose/ui/unit/IntOffset;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutAnimateItemModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutAnimateItemModifierNode.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,135:1\n79#2:136\n*S KotlinDebug\n*F\n+ 1 LazyLayoutAnimateItemModifierNode.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1\n*L\n105#1:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        "invoke"
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
.field final synthetic $animationTarget:J

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;->$animationTarget:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;->invoke(Landroidx/compose/animation/core/Animatable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/animation/core/Animatable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$animateTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 105
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v1

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;->$animationTarget:J

    .line 136
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    .line 105
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$setPlacementDelta--gyyYBs(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;J)V

    return-void
.end method
