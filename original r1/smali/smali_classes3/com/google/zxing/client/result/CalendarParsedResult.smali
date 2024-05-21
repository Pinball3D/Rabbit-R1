.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# static fields
.field private static final DATE_TIME:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION_FIELD_UNITS:[J


# instance fields
.field private final attendees:[Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:J

.field private final endAllDay:Z

.field private final latitude:D

.field private final location:Ljava/lang/String;

.field private final longitude:D

.field private final organizer:Ljava/lang/String;

.field private final start:J

.field private final startAllDay:Z

.field private final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 7

    move-object v0, p0

    .line 72
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v1}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-static {p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_1

    .line 82
    invoke-static {p4}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDurationMS(Ljava/lang/CharSequence;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    add-long/2addr v1, v3

    :goto_0
    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    goto :goto_1

    .line 86
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    if-eqz p3, :cond_3

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-void

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static format(ZJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eqz p0, :cond_1

    .line 231
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    .line 233
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    .line 200
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 209
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 214
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDateTimeString(Ljava/lang/String;)J

    move-result-wide v3

    .line 215
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 220
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v3, v0

    return-wide v3

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDateTimeString(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 201
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseDateTimeString(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseDurationMS(Ljava/lang/CharSequence;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    .line 240
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    .line 245
    array-length v4, v3

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 246
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 248
    aget-wide v2, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v2, v5

    add-long/2addr v0, v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    return-wide v0
.end method


# virtual methods
.method public getAttendees()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 182
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    .line 183
    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    iget-wide v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    .line 184
    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 185
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 186
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 187
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 188
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getEndTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-wide v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    return-object p0
.end method

.method public getStart()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public isEndAllDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    return p0
.end method

.method public isStartAllDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    return p0
.end method
