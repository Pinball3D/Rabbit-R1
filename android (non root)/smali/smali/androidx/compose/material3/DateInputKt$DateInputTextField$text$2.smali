.class final Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DateInput.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateInputKt;->DateInputTextField-zm97o8M(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/DateInputFormat;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $dateInputFormat:Landroidx/compose/material3/DateInputFormat;

.field final synthetic $initialDate:Landroidx/compose/material3/CalendarDate;

.field final synthetic $locale:Ljava/util/Locale;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/DateInputFormat;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p2, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$initialDate:Landroidx/compose/material3/CalendarDate;

    iput-object p3, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$dateInputFormat:Landroidx/compose/material3/DateInputFormat;

    iput-object p4, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$locale:Ljava/util/Locale;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/runtime/MutableState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v1, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$initialDate:Landroidx/compose/material3/CalendarDate;

    iget-object v2, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$dateInputFormat:Landroidx/compose/material3/DateInputFormat;

    iget-object p0, p0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->$locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object v0

    .line 117
    invoke-virtual {v1}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v3

    .line 118
    invoke-virtual {v2}, Landroidx/compose/material3/DateInputFormat;->getPatternWithoutDelimiters()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {v0, v3, v4, v1, p0}, Landroidx/compose/material3/CalendarModel;->formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    move-object v1, p0

    const/4 p0, 0x0

    .line 123
    invoke-static {p0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 113
    new-instance p0, Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v1, v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0}, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2;->invoke()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method
