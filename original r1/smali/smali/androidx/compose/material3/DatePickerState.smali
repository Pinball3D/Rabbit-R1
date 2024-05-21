.class public final Landroidx/compose/material3/DatePickerState;
.super Ljava/lang/Object;
.source "DatePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/DatePickerState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1920:1\n76#2:1921\n102#2,2:1922\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerState\n*L\n307#1:1921\n307#1:1922,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB.\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tB\u000f\u0008\u0002\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u001dR4\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00088F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/material3/DatePickerState;",
        "",
        "initialSelectedDateMillis",
        "",
        "initialDisplayedMonthMillis",
        "yearRange",
        "Lkotlin/ranges/IntRange;",
        "initialDisplayMode",
        "Landroidx/compose/material3/DisplayMode;",
        "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
        "selectedDateMillis",
        "getSelectedDateMillis",
        "()Ljava/lang/Long;",
        "getStateData$material3_release",
        "()Landroidx/compose/material3/StateData;",
        "setSelection",
        "",
        "dateMillis",
        "(Ljava/lang/Long;)V",
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

.field public static final Companion:Landroidx/compose/material3/DatePickerState$Companion;


# instance fields
.field private final displayMode$delegate:Landroidx/compose/runtime/MutableState;

.field private final stateData:Landroidx/compose/material3/StateData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/DatePickerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/DatePickerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/DatePickerState;->Companion:Landroidx/compose/material3/DatePickerState$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/material3/StateData;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 307
    invoke-virtual {p1}, Landroidx/compose/material3/StateData;->getDisplayMode()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/DatePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/StateData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material3/DatePickerState;-><init>(Landroidx/compose/material3/StateData;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;I)V
    .locals 8

    const-string/jumbo v0, "yearRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroidx/compose/material3/StateData;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/StateData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 269
    invoke-direct {p0, v0}, Landroidx/compose/material3/DatePickerState;-><init>(Landroidx/compose/material3/StateData;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DatePickerState;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;I)V

    return-void
.end method


# virtual methods
.method public final getDisplayMode-jFl-4v0()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 307
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1921
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/DisplayMode;

    invoke-virtual {p0}, Landroidx/compose/material3/DisplayMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public final getSelectedDateMillis()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/DatePickerState;->stateData:Landroidx/compose/material3/StateData;

    .line 288
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

    iget-object p0, p0, Landroidx/compose/material3/DatePickerState;->stateData:Landroidx/compose/material3/StateData;

    return-object p0
.end method

.method public final setDisplayMode-vCnGnXg(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerState;->displayMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 307
    invoke-static {p1}, Landroidx/compose/material3/DisplayMode;->box-impl(I)Landroidx/compose/material3/DisplayMode;

    move-result-object p1

    .line 1922
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelection(Ljava/lang/Long;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/DatePickerState;->stateData:Landroidx/compose/material3/StateData;

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1, v0}, Landroidx/compose/material3/StateData;->setSelection(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
