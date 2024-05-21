.class final Landroidx/compose/material3/TimePickerKt$TimeInputImpl$minuteValue$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->TimeInputImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/runtime/MutableState<",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        ">;>;"
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
.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$minuteValue$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/runtime/MutableState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;"
        }
    .end annotation

    .line 703
    new-instance v7, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object p0, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$minuteValue$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerState;->getMinute()I

    move-result p0

    const/4 v8, 0x2

    invoke-static {p0, v8}, Landroidx/compose/material3/TimePickerKt;->access$toLocalString(II)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x0

    invoke-static {v7, p0, v8, p0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 702
    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$minuteValue$2$1;->invoke()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method
