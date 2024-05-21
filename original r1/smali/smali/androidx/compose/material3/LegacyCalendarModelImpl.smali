.class public final Landroidx/compose/material3/LegacyCalendarModelImpl;
.super Ljava/lang/Object;
.source "LegacyCalendarModelImpl.kt"

# interfaces
.implements Landroidx/compose/material3/CalendarModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacyCalendarModelImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyCalendarModelImpl.kt\nandroidx/compose/material3/LegacyCalendarModelImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,221:1\n1864#2,3:222\n*S KotlinDebug\n*F\n+ 1 LegacyCalendarModelImpl.kt\nandroidx/compose/material3/LegacyCalendarModelImpl\n*L\n57#1:222,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 /2\u00020\u0001:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J \u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0008H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u0008H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0004H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0018\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020\u0004H\u0016J\u001a\u0010(\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\u0018\u0010)\u001a\u00020 2\u0006\u0010&\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0004H\u0016J\u0008\u0010+\u001a\u00020\u000eH\u0016J\u0014\u0010,\u001a\u00020\"*\u00020\u00082\u0006\u0010-\u001a\u00020.H\u0002J\u000c\u0010,\u001a\u00020\"*\u00020 H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r0\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/material3/LegacyCalendarModelImpl;",
        "Landroidx/compose/material3/CalendarModel;",
        "()V",
        "firstDayOfWeek",
        "",
        "getFirstDayOfWeek",
        "()I",
        "today",
        "Landroidx/compose/material3/CalendarDate;",
        "getToday",
        "()Landroidx/compose/material3/CalendarDate;",
        "weekdayNames",
        "",
        "Lkotlin/Pair;",
        "",
        "getWeekdayNames",
        "()Ljava/util/List;",
        "dayInISO8601",
        "day",
        "formatWithPattern",
        "utcTimeMillis",
        "",
        "pattern",
        "locale",
        "Ljava/util/Locale;",
        "getCanonicalDate",
        "timeInMillis",
        "getDateInputFormat",
        "Landroidx/compose/material3/DateInputFormat;",
        "getDayOfWeek",
        "date",
        "getMonth",
        "Landroidx/compose/material3/CalendarMonth;",
        "firstDayCalendar",
        "Ljava/util/Calendar;",
        "year",
        "month",
        "minusMonths",
        "from",
        "subtractedMonthsCount",
        "parse",
        "plusMonths",
        "addedMonthsCount",
        "toString",
        "toCalendar",
        "timeZone",
        "Ljava/util/TimeZone;",
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
.field public static final Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

.field private static final utcTimeZone:Ljava/util/TimeZone;


# instance fields
.field private final firstDayOfWeek:I

.field private final weekdayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    const-string v0, "UTC"

    .line 178
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getTimeZone(\"UTC\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result v0

    iput v0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->firstDayOfWeek:I

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weekdays"

    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 223
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Ljava/lang/String;

    .line 58
    new-instance v7, Lkotlin/Pair;

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {v7, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 61
    :cond_1
    new-instance v3, Lkotlin/Pair;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    aget-object v2, v2, v4

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->weekdayNames:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getUtcTimeZone$cp()Ljava/util/TimeZone;
    .locals 1

    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method private final dayInISO8601(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x6

    const/4 p0, 0x7

    .line 186
    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private final getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;
    .locals 8

    const/4 v0, 0x7

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getFirstDayOfWeek()I

    move-result p0

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    move v5, v0

    .line 197
    new-instance p0, Landroidx/compose/material3/CalendarMonth;

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    .line 199
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v0, 0x5

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 202
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object v1, p0

    .line 197
    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/CalendarMonth;-><init>(IIIIJ)V

    return-object p0
.end method

.method private final toCalendar(Landroidx/compose/material3/CalendarDate;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    .line 213
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 215
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 217
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const-string p1, "calendar"

    .line 218
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;
    .locals 2

    sget-object p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    .line 207
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 208
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "calendar"

    .line 209
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "pattern"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "locale"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    .line 133
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;->formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalDate(J)Landroidx/compose/material3/CalendarDate;
    .locals 6

    sget-object p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    .line 74
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 78
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 79
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 80
    new-instance p1, Landroidx/compose/material3/CalendarDate;

    const/4 p2, 0x1

    .line 81
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    .line 82
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 p2, 0x5

    .line 83
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 84
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p1

    .line 80
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object p1
.end method

.method public getDateInputFormat(Ljava/util/Locale;)Landroidx/compose/material3/DateInputFormat;
    .locals 0

    const-string p0, "locale"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 66
    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.text.SimpleDateFormat"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 69
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DateFormat.getDateInstan\u2026leDateFormat).toPattern()"

    .line 66
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Landroidx/compose/material3/CalendarModelKt;->datePatternAsInputFormat(Ljava/lang/String;)Landroidx/compose/material3/DateInputFormat;

    move-result-object p0

    return-object p0
.end method

.method public getDayOfWeek(Landroidx/compose/material3/CalendarDate;)I
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarDate;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->firstDayOfWeek:I

    return p0
.end method

.method public getMonth(II)Landroidx/compose/material3/CalendarMonth;
    .locals 2

    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    .line 104
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    sub-int/2addr p2, v1

    .line 107
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 108
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const-string p1, "firstDayCalendar"

    .line 109
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public getMonth(J)Landroidx/compose/material3/CalendarMonth;
    .locals 1

    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    .line 89
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    const/4 p2, 0x1

    .line 91
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 92
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 93
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 94
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 95
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const-string p1, "firstDayCalendar"

    .line 96
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public getMonth(Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/CalendarMonth;
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(II)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public getToday()Landroidx/compose/material3/CalendarDate;
    .locals 8

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xf

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    new-instance v7, Landroidx/compose/material3/CalendarDate;

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 44
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    .line 45
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 46
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    int-to-long v0, v0

    add-long/2addr v5, v0

    move-object v1, v7

    .line 42
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object v7
.end method

.method public getWeekdayNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->weekdayNames:Ljava/util/List;

    return-object p0
.end method

.method public minusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    return-object p1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    neg-int p2, p2

    .line 128
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 129
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/material3/CalendarDate;
    .locals 7

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    .line 137
    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    const/4 v0, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 141
    :cond_0
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 143
    new-instance p0, Landroidx/compose/material3/CalendarDate;

    const/4 p2, 0x1

    .line 144
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    .line 145
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 p2, 0x5

    .line 146
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 147
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object v1, p0

    .line 143
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    return-object v0
.end method

.method public plusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    return-object p1

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    .line 120
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 121
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LegacyCalendarModel"

    return-object p0
.end method
