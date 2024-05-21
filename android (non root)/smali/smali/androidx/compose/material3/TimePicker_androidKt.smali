.class public final Landroidx/compose/material3/TimePicker_androidKt;
.super Ljava/lang/Object;
.source "TimePicker.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.android.kt\nandroidx/compose/material3/TimePicker_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,33:1\n76#2:34\n*S KotlinDebug\n*F\n+ 1 TimePicker.android.kt\nandroidx/compose/material3/TimePicker_androidKt\n*L\n26#1:34\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001d\u0010\u0000\u001a\u00020\u00018AX\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "defaultTimePickerLayoutType",
        "Landroidx/compose/material3/TimePickerLayoutType;",
        "getDefaultTimePickerLayoutType$annotations",
        "()V",
        "getDefaultTimePickerLayoutType",
        "(Landroidx/compose/runtime/Composer;I)I",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDefaultTimePickerLayoutType(Landroidx/compose/runtime/Composer;I)I
    .locals 3

    const-string v0, "C*25@985L7:TimePicker.android.kt#uh7d8r"

    const v1, -0x75fb68c5

    .line 26
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.<get-defaultTimePickerLayoutType> (TimePicker.android.kt:25)"

    invoke-static {v1, p1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 34
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 26
    check-cast p1, Landroid/content/res/Configuration;

    .line 27
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ge v0, p1, :cond_1

    .line 28
    sget-object p1, Landroidx/compose/material3/TimePickerLayoutType;->Companion:Landroidx/compose/material3/TimePickerLayoutType$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TimePickerLayoutType$Companion;->getHorizontal-QJTpgSE()I

    move-result p1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Landroidx/compose/material3/TimePickerLayoutType;->Companion:Landroidx/compose/material3/TimePickerLayoutType$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/TimePickerLayoutType$Companion;->getVertical-QJTpgSE()I

    move-result p1

    .line 26
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return p1
.end method

.method public static synthetic getDefaultTimePickerLayoutType$annotations()V
    .locals 0

    return-void
.end method
