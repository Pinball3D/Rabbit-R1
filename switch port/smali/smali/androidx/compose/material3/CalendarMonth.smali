.class public final Landroidx/compose/material3/CalendarMonth;
.super Ljava/lang/Object;
.source "CalendarModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001d2\u0008\u0008\u0002\u0010!\u001a\u00020\"J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\u000e\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&J\t\u0010\'\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/material3/CalendarMonth;",
        "",
        "year",
        "",
        "month",
        "numberOfDays",
        "daysFromStartOfWeekToFirstOfMonth",
        "startUtcTimeMillis",
        "",
        "(IIIIJ)V",
        "getDaysFromStartOfWeekToFirstOfMonth",
        "()I",
        "endUtcTimeMillis",
        "getEndUtcTimeMillis",
        "()J",
        "getMonth",
        "getNumberOfDays",
        "getStartUtcTimeMillis",
        "getYear",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "format",
        "",
        "calendarModel",
        "Landroidx/compose/material3/CalendarModel;",
        "skeleton",
        "locale",
        "Ljava/util/Locale;",
        "hashCode",
        "indexIn",
        "years",
        "Lkotlin/ranges/IntRange;",
        "toString",
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


# instance fields
.field private final daysFromStartOfWeekToFirstOfMonth:I

.field private final endUtcTimeMillis:J

.field private final month:I

.field private final numberOfDays:I

.field private final startUtcTimeMillis:J

.field private final year:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    iput p2, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    iput p3, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    iput p4, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    iput-wide p5, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    int-to-long p1, p3

    const-wide/32 p3, 0x5265c00

    mul-long/2addr p1, p3

    add-long/2addr p5, p1

    const-wide/16 p1, 0x1

    sub-long/2addr p5, p1

    iput-wide p5, p0, Landroidx/compose/material3/CalendarMonth;->endUtcTimeMillis:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/CalendarMonth;IIIIJILjava/lang/Object;)Landroidx/compose/material3/CalendarMonth;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Landroidx/compose/material3/CalendarMonth;->copy(IIIIJ)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic format$default(Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/CalendarModel;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 277
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "getDefault()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/CalendarMonth;->format(Landroidx/compose/material3/CalendarModel;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    return-wide v0
.end method

.method public final copy(IIIIJ)Landroidx/compose/material3/CalendarMonth;
    .locals 7

    new-instance p0, Landroidx/compose/material3/CalendarMonth;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/CalendarMonth;-><init>(IIIIJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/CalendarMonth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/CalendarMonth;

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    iget v3, p1, Landroidx/compose/material3/CalendarMonth;->year:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    iget v3, p1, Landroidx/compose/material3/CalendarMonth;->month:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    iget v3, p1, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    iget v3, p1, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    iget-wide p0, p1, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final format(Landroidx/compose/material3/CalendarModel;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "calendarModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skeleton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-interface {p1, p0, p2, p3}, Landroidx/compose/material3/CalendarModel;->formatWithSkeleton(Landroidx/compose/material3/CalendarMonth;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDaysFromStartOfWeekToFirstOfMonth()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    return p0
.end method

.method public final getEndUtcTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CalendarMonth;->endUtcTimeMillis:J

    return-wide v0
.end method

.method public final getMonth()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    return p0
.end method

.method public final getNumberOfDays()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    return p0
.end method

.method public final getStartUtcTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    return-wide v0
.end method

.method public final getYear()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final indexIn(Lkotlin/ranges/IntRange;)I
    .locals 1

    const-string/jumbo v0, "years"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    .line 268
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result p1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xc

    iget p0, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalendarMonth(year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->numberOfDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysFromStartOfWeekToFirstOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/CalendarMonth;->daysFromStartOfWeekToFirstOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startUtcTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/material3/CalendarMonth;->startUtcTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
