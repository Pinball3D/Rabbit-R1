.class public final Landroidx/compose/material3/CalendarModelImpl$Companion;
.super Ljava/lang/Object;
.source "CalendarModelImpl.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/CalendarModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material3/CalendarModelImpl$Companion;",
        "",
        "()V",
        "utcTimeZoneId",
        "Ljava/time/ZoneId;",
        "getUtcTimeZoneId$material3_release",
        "()Ljava/time/ZoneId;",
        "formatWithPattern",
        "",
        "utcTimeMillis",
        "",
        "pattern",
        "locale",
        "Ljava/util/Locale;",
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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/CalendarModelImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p3, p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    .line 168
    invoke-static {p4}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    const-string p4, "ofPattern(pattern, local\u2026(DecimalStyle.of(locale))"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Landroidx/compose/material3/CalendarModelImpl$Companion;->getUtcTimeZoneId$material3_release()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p3}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ofEpochMilli(utcTimeMill\u2026       .format(formatter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUtcTimeZoneId$material3_release()Ljava/time/ZoneId;
    .locals 0

    .line 179
    invoke-static {}, Landroidx/compose/material3/CalendarModelImpl;->access$getUtcTimeZoneId$cp()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
