.class public final Landroidx/compose/material3/SelectedRangeInfo$Companion;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SelectedRangeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/material3/SelectedRangeInfo$Companion;",
        "",
        "()V",
        "calculateRangeInfo",
        "Landroidx/compose/material3/SelectedRangeInfo;",
        "month",
        "Landroidx/compose/material3/CalendarMonth;",
        "startDate",
        "Landroidx/compose/material3/CalendarDate;",
        "endDate",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/SelectedRangeInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateRangeInfo(Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/SelectedRangeInfo;
    .locals 6

    const-string p0, "month"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 644
    invoke-virtual {p2}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getEndUtcTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 645
    invoke-virtual {p3}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_3

    .line 649
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 650
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getEndUtcTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v1

    :cond_2
    if-eqz p0, :cond_3

    .line 652
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/material3/CalendarDate;->getDayOfMonth()I

    move-result p2

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    goto :goto_1

    .line 654
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v2

    :goto_1
    if-eqz v0, :cond_4

    .line 657
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/material3/CalendarDate;->getDayOfMonth()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    goto :goto_2

    .line 659
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getNumberOfDays()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    .line 664
    :goto_2
    rem-int/lit8 p2, v2, 0x7

    .line 665
    div-int/lit8 v2, v2, 0x7

    .line 663
    invoke-static {p2, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p2

    .line 668
    rem-int/lit8 v1, p1, 0x7

    .line 669
    div-int/lit8 p1, p1, 0x7

    .line 667
    invoke-static {v1, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 671
    new-instance p1, Landroidx/compose/material3/SelectedRangeInfo;

    .line 672
    new-instance v3, Lkotlin/Pair;

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p2

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p3

    invoke-direct {v3, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    invoke-direct {p1, v3, p0, v0}, Landroidx/compose/material3/SelectedRangeInfo;-><init>(Lkotlin/Pair;ZZ)V

    return-object p1

    :cond_5
    :goto_3
    return-object p0
.end method
