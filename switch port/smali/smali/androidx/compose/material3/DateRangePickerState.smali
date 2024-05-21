.class public final Landroidx/compose/material3/DateRangePickerState;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/DateRangePickerState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateRangePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,809:1\n76#2:810\n102#2,2:811\n*S KotlinDebug\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerState\n*L\n274#1:810\n274#1:811,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B8\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nB\u000f\u0008\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u001f\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010!R4\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/compose/material3/DateRangePickerState;",
        "",
        "initialSelectedStartDateMillis",
        "",
        "initialSelectedEndDateMillis",
        "initialDisplayedMonthMillis",
        "yearRange",
        "Lkotlin/ranges/IntRange;",
        "initialDisplayMode",
        "Landroidx/compose/material3/DisplayMode;",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "stateData",
        "Landroidx/compose/material3/StateData;",
        "(Landroidx/compose/material3/StateData;)V",
        "<set-?>",
        "displayMode",
        "getDisplayMode-jFl-4v0",
        "()I",
        "setDisplayMode-vCnGnXg",
        "(I)V",
        "displayMode$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "selectedEndDateMillis",
        "getSelectedEndDateMillis",
        "()Ljava/lang/Long;",
        "selectedStartDateMillis",
        "getSelectedStartDateMillis",
        "getStateData$material3_release",
        "()Landroidx/compose/material3/StateData;",
        "setSelection",
        "",
        "startDateMillis",
        "endDateMillis",
        "(Ljava/lang/Long;Ljava/lang/Long;)V",
        "Companion",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/DateRangePickerState$Companion;


# instance fields
.field private final displayMode$delegate:Landroidx/compose/runtime/MutableState;

.field private final stateData:Landroidx/compose/material3/StateData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/DateRangePickerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/DateRangePickerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/DateRangePickerState;->Companion:Landroidx/compose/material3/DateRangePickerState$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/material3/StateData;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 274
    invoke-virtual {p1}, Landroidx/compose/material3/StateData;->getDisplayMode()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/StateData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material3/DateRangePickerState;-><init>(Landroidx/compose/material3/StateData;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;I)V
    .locals 8

    const-string/jumbo v0, "yearRange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroidx/compose/material3/StateData;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/StateData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 214
    invoke-direct {p0, v0}, Landroidx/compose/material3/DateRangePickerState;-><init>(Landroidx/compose/material3/StateData;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/DateRangePickerState;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;I)V

    return-void
.end method


# virtual methods
.method public final getDisplayMode-jFl-4v0()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 274
    check-cast p0, Landroidx/compose/runtime/State;

    .line 810
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/DisplayMode;

    invoke-virtual {p0}, Landroidx/compose/material3/DisplayMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public final getSelectedEndDateMillis()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 249
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getSelectedEndDate()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/CalendarDate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSelectedStartDateMillis()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 236
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getSelectedStartDate()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/CalendarDate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getStateData$material3_release()Landroidx/compose/material3/StateData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->stateData:Landroidx/compose/material3/StateData;

    return-object p0
.end method

.method public final setDisplayMode-vCnGnXg(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 274
    invoke-static {p1}, Landroidx/compose/material3/DisplayMode;->box-impl(I)Landroidx/compose/material3/DisplayMode;

    move-result-object p1

    .line 811
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelection(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DateRangePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 267
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/StateData;->setSelection(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
