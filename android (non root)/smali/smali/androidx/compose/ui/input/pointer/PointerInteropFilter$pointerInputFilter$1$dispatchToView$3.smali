.class final Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerInteropFilter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/MotionEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
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
.field final synthetic this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

.field final synthetic this$1:Landroidx/compose/ui/input/pointer/PointerInteropFilter;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->this$1:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 294
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->invoke(Landroid/view/MotionEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->this$1:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 301
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 302
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    goto :goto_0

    .line 304
    :cond_0
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 301
    :goto_0
    invoke-static {v0, p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->access$setState$p(Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$3;->this$1:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 309
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
