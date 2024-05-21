.class public final Landroidx/compose/material3/CalendarModelKt;
.super Ljava/lang/Object;
.source "CalendarModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "DaysInWeek",
        "",
        "MillisecondsIn24Hours",
        "",
        "datePatternAsInputFormat",
        "Landroidx/compose/material3/DateInputFormat;",
        "localeFormat",
        "",
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


# static fields
.field public static final DaysInWeek:I = 0x7

.field public static final MillisecondsIn24Hours:J = 0x5265c00L


# direct methods
.method public static final datePatternAsInputFormat(Ljava/lang/String;)Landroidx/compose/material3/DateInputFormat;
    .locals 8

    const-string v0, "localeFormat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^dMy/\\-.]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 318
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "d{1,2}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, "dd"

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 319
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "M{1,2}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, "MM"

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 320
    new-instance v0, Lkotlin/text/Regex;

    const-string/jumbo v1, "y{1,4}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "yyyy"

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "My"

    const-string v4, "M/y"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 321
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 322
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 324
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[/\\-.]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 325
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 327
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v1, Landroidx/compose/material3/DateInputFormat;

    .line 330
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 328
    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/DateInputFormat;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method
