.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WindowInsetsConnection.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "",
        "velocity",
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
.field final synthetic $animationController:Landroid/view/WindowInsetsAnimationController;

.field final synthetic $endVelocity:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $hidden:I

.field final synthetic $shown:I

.field final synthetic $targetShown:Z

.field final synthetic this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method constructor <init>(IILandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/WindowInsetsAnimationController;Z)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$hidden:I

    iput p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$shown:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$endVelocity:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$targetShown:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 348
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->invoke(FF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FF)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$hidden:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$shown:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 354
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$adjustInsets(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$endVelocity:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 357
    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$targetShown:Z

    .line 358
    invoke-interface {p1, p2}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    const/4 p2, 0x0

    .line 359
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$setAnimationController$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroid/view/WindowInsetsAnimationController;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 360
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$getAnimationJob$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)Lkotlinx/coroutines/Job;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;

    invoke-direct {p1}, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;-><init>()V

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_0
    return-void
.end method
