.class Landroidx/core/text/util/LocalePreferences$Api33Impl;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHourCycle(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 600
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->getDefaultHourCycle()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object p0

    .line 599
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences$Api33Impl;->getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;
    .locals 1

    .line 606
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$HourCycle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "h24"

    return-object p0

    :cond_1
    const-string p0, "h23"

    return-object p0

    :cond_2
    const-string p0, "h12"

    return-object p0

    :cond_3
    const-string p0, "h11"

    return-object p0
.end method

.method static getResolvedTemperatureUnit(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 585
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    const-string/jumbo v1, "weather"

    .line 586
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->usage(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    sget-object v1, Landroid/icu/util/MeasureUnit;->CELSIUS:Landroid/icu/util/MeasureUnit;

    .line 587
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 588
    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 589
    invoke-virtual {p0, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/number/FormattedNumber;->getOutputUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fahrenhe"

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method
