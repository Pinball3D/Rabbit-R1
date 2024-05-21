.class final Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $scrollToNextMonthLabel:Ljava/lang/String;

.field final synthetic $scrollToPreviousMonthLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$scrollToNextMonthLabel:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;->$scrollToNextMonthLabel:Ljava/lang/String;

    .line 562
    invoke-static {v0, v1, v2, p0}, Landroidx/compose/material3/DateRangePickerKt;->access$customScrollActions(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/util/List;)V

    return-void
.end method
