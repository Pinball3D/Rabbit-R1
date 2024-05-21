.class final Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerInteropFilter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;->pointerInteropFilter(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInteropFilter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,349:1\n25#2:350\n1097#3,6:351\n*S KotlinDebug\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2\n*L\n79#1:350\n79#1:351,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
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
.field final synthetic $onTouchEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestDisallowInterceptTouchEvent:Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$onTouchEvent:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$requestDisallowInterceptTouchEvent:Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x1650851b

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C78@3403L35:PointerInteropFilter.android.kt#a556rk"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.input.pointer.pointerInteropFilter.<anonymous> (PointerInteropFilter.android.kt:77)"

    .line 79
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p1, -0x1d58f75c

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 351
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 352
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 79
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    .line 354
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 350
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 79
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object p3, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$onTouchEvent:Lkotlin/jvm/functions/Function1;

    .line 80
    invoke-virtual {p1, p3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->setOnTouchEvent(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->$requestDisallowInterceptTouchEvent:Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;

    .line 81
    invoke-virtual {p1, p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->setRequestDisallowInterceptTouchEvent(Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p1, Landroidx/compose/ui/Modifier;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
