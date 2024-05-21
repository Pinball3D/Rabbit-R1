.class public Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field public static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 55
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 70
    invoke-static {p0, v0, v1}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 81
    invoke-static {p0, p1, v0}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 6

    .line 93
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x4

    if-eqz p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    add-int/2addr v2, v1

    .line 99
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    add-int/2addr v2, v1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, p0}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x2d

    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x54

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x3a

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    .line 110
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    .line 112
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_2

    const/16 p1, 0x2e

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xe

    .line 115
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v4, 0x3

    invoke-static {v1, p1, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 118
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eqz p1, :cond_4

    const p2, 0xea60

    .line 120
    div-int p2, p1, p2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 121
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p0, 0x2b

    .line 122
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v1, v0, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v1, p2, v2}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    goto :goto_3

    :cond_4
    const/16 p0, 0x5a

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 370
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 374
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    :goto_0
    if-lez p2, :cond_0

    const/16 v0, 0x30

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Mismatching time zone indicator: "

    const-string v3, "GMT"

    const-string v4, "Invalid time zone indicator \'"

    .line 151
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    add-int/lit8 v6, v5, 0x4

    .line 154
    invoke-static {v1, v5, v6}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v8, 0x2d

    .line 155
    invoke-static {v1, v6, v8}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    const/4 v10, 0x5

    if-eqz v9, :cond_0

    add-int/lit8 v6, v5, 0x5

    :cond_0
    add-int/lit8 v5, v6, 0x2

    .line 160
    invoke-static {v1, v6, v5}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 161
    invoke-static {v1, v5, v8}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v5, v6, 0x3

    :cond_1
    add-int/lit8 v6, v5, 0x2

    .line 166
    invoke-static {v1, v5, v6}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    const/16 v12, 0x54

    .line 174
    invoke-static {v1, v6, v12}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_2

    .line 176
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v6, :cond_2

    .line 177
    new-instance v0, Ljava/util/GregorianCalendar;

    sub-int/2addr v9, v13

    invoke-direct {v0, v7, v9, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 179
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v14, 0x2b

    const/16 v15, 0x5a

    if-eqz v12, :cond_a

    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v12, v5, 0x5

    .line 186
    invoke-static {v1, v6, v12}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v10, 0x3a

    .line 187
    invoke-static {v1, v12, v10}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v12, v5, 0x6

    :cond_3
    add-int/lit8 v5, v12, 0x2

    .line 191
    invoke-static {v1, v12, v5}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 192
    invoke-static {v1, v5, v10}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v12, v12, 0x3

    move v5, v12

    .line 196
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_9

    .line 197
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v15, :cond_9

    if-eq v10, v14, :cond_9

    if-eq v10, v8, :cond_9

    add-int/lit8 v10, v5, 0x2

    .line 199
    invoke-static {v1, v5, v10}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    const/16 v8, 0x3b

    if-le v12, v8, :cond_5

    const/16 v8, 0x3f

    if-ge v12, v8, :cond_5

    const/16 v12, 0x3b

    :cond_5
    const/16 v8, 0x2e

    .line 202
    invoke-static {v1, v10, v8}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v8, v5, 0x3

    add-int/lit8 v10, v5, 0x4

    .line 204
    invoke-static {v1, v10}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v5, v5, 0x6

    .line 205
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 206
    invoke-static {v1, v8, v5}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    sub-int/2addr v5, v8

    if-eq v5, v13, :cond_7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    goto :goto_0

    :cond_6
    mul-int/lit8 v17, v17, 0xa

    goto :goto_0

    :cond_7
    mul-int/lit8 v17, v17, 0x64

    :goto_0
    move v5, v6

    move v6, v10

    move/from16 v8, v16

    move/from16 v10, v17

    goto :goto_1

    :cond_8
    move v5, v6

    move v6, v10

    move/from16 v8, v16

    const/4 v10, 0x0

    goto :goto_1

    :cond_9
    move/from16 v8, v16

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 225
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v6, :cond_13

    .line 230
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v15, :cond_b

    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    add-int/2addr v6, v13

    goto/16 :goto_6

    :cond_b
    const/16 v15, 0x2b

    if-eq v14, v15, :cond_d

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_c

    goto :goto_2

    .line 270
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_d
    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-lt v14, v15, :cond_e

    goto :goto_3

    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "00"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v6, v14

    const-string v14, "+0000"

    .line 243
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "+00:00"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_5

    .line 250
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    .line 256
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, ":"

    const-string v13, ""

    .line 262
    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 263
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_4

    .line 264
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " given, resolves to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11
    :goto_4
    move-object v0, v4

    goto :goto_6

    :cond_12
    :goto_5
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 273
    :goto_6
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 274
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    .line 275
    invoke-virtual {v3, v0, v7}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v9, v0

    const/4 v0, 0x2

    .line 276
    invoke-virtual {v3, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 277
    invoke-virtual {v3, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 278
    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 279
    invoke-virtual {v3, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 280
    invoke-virtual {v3, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 281
    invoke-virtual {v3, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 283
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 284
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 226
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_7

    .line 294
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 296
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 297
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_16
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse date ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 300
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    .line 327
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
