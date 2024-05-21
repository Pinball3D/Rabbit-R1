.class final Landroidx/compose/material3/TimePickerState$selectorPos$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerState;-><init>(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/unit/DpOffset;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerState$selectorPos$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,1673:1\n75#2:1674\n58#2:1675\n51#2:1676\n88#2:1677\n75#2:1678\n51#2:1679\n88#2:1680\n75#2:1681\n51#2:1682\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerState$selectorPos$2\n*L\n509#1:1674\n514#1:1675\n516#1:1676\n517#1:1677\n517#1:1678\n517#1:1679\n518#1:1680\n518#1:1681\n518#1:1682\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/unit/DpOffset;",
        "invoke-RKDOV3M",
        "()J"
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
.field final synthetic $is24Hour:Z

.field final synthetic this$0:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->this$0:Landroidx/compose/material3/TimePickerState;

    iput-boolean p2, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->$is24Hour:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 507
    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerState$selectorPos$2;->invoke-RKDOV3M()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->box-impl(J)Landroidx/compose/ui/unit/DpOffset;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-RKDOV3M()J
    .locals 5

    iget-object v0, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->this$0:Landroidx/compose/material3/TimePickerState;

    .line 508
    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerState;->isInnerCircle$material3_release()Z

    move-result v0

    .line 509
    sget-object v1, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialSelectorHandleContainerSize-D9Ej5fM()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1674
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    iget-boolean v3, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->$is24Hour:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->this$0:Landroidx/compose/material3/TimePickerState;

    .line 510
    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerState;->getSelection-JiIwxys$material3_release()I

    move-result v0

    sget-object v3, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v3}, Landroidx/compose/material3/Selection$Companion;->getHour-JiIwxys()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/material3/Selection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getInnerCircleRadius$p()F

    move-result v0

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getOuterCircleSizeRadius$p()F

    move-result v0

    :goto_0
    sub-float/2addr v0, v1

    .line 1675
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    add-float/2addr v0, v1

    .line 1676
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->this$0:Landroidx/compose/material3/TimePickerState;

    .line 517
    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v0

    .line 1677
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 517
    sget-object v3, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialContainerSize-D9Ej5fM()F

    move-result v3

    div-float/2addr v3, v2

    .line 1678
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    add-float/2addr v1, v3

    .line 1679
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    iget-object p0, p0, Landroidx/compose/material3/TimePickerState$selectorPos$2;->this$0:Landroidx/compose/material3/TimePickerState;

    .line 518
    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerState;->getCurrentAngle$material3_release()Landroidx/compose/animation/core/Animatable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p0, v3

    mul-float/2addr v0, p0

    .line 1680
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 518
    sget-object v0, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialContainerSize-D9Ej5fM()F

    move-result v0

    div-float/2addr v0, v2

    .line 1681
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    add-float/2addr p0, v0

    .line 1682
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 520
    invoke-static {v1, p0}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v0

    return-wide v0
.end method
