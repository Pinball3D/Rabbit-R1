.class final Landroidx/compose/material3/TimePickerKt$ClockFace$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->ClockFace(Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;ZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$dirty:I

.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $colors:Landroidx/compose/material3/TimePickerColors;

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;ZLandroidx/compose/material3/TimePickerColors;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput-boolean p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$autoSwitchToMinute:Z

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$colors:Landroidx/compose/material3/TimePickerColors;

    iput p4, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$$dirty:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1141
    check-cast p1, Ljava/util/List;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->invoke(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C1141@44425L1479:TimePicker.kt#uh7d8r"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ClockFace.<anonymous> (TimePicker.kt:1140)"

    const v2, 0x610bd96f

    .line 1142
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1143
    :cond_0
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p3, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-boolean v1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$autoSwitchToMinute:Z

    .line 1144
    invoke-static {p3, v0, v1}, Landroidx/compose/material3/TimePickerKt;->access$clockDial(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Z)Landroidx/compose/ui/Modifier;

    move-result-object p3

    .line 1145
    sget-object v0, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialContainerSize-D9Ej5fM()F

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p3

    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$colors:Landroidx/compose/material3/TimePickerColors;

    .line 1146
    invoke-static {p3, v0, v1}, Landroidx/compose/material3/TimePickerKt;->access$drawSelector(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1147
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getOuterCircleSizeRadius$p()F

    move-result v3

    .line 1148
    new-instance p3, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1;

    iget-object v5, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$colors:Landroidx/compose/material3/TimePickerColors;

    iget-object v7, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-boolean v8, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$autoSwitchToMinute:Z

    iget v9, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2;->$$dirty:I

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1;-><init>(Landroidx/compose/material3/TimePickerColors;Ljava/util/List;Landroidx/compose/material3/TimePickerState;ZI)V

    const p0, -0x529717c9

    const/4 p1, 0x1

    invoke-static {p2, p0, p1, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v6, 0x1b0

    const/4 v7, 0x0

    move-object v5, p2

    .line 1142
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/TimePickerKt;->access$CircularLayout-uFdPcIQ(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-void
.end method
