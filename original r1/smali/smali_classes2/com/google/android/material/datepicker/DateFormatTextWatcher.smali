.class abstract Lcom/google/android/material/datepicker/DateFormatTextWatcher;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "DateFormatTextWatcher.java"


# instance fields
.field private final constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final formatHint:Ljava/lang/String;

.field private lastLength:I

.field private final outOfRange:Ljava/lang/String;

.field private final setErrorCallback:Ljava/lang/Runnable;

.field private setRangeErrorCallback:Ljava/lang/Runnable;

.field private final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->lastLength:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    iput-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 56
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_out_of_range:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->outOfRange:Ljava/lang/String;

    .line 57
    new-instance p2, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/datepicker/DateFormatTextWatcher;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->setErrorCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private createRangeErrorCallback(J)Ljava/lang/Runnable;
    .locals 1

    .line 132
    new-instance v0, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/datepicker/DateFormatTextWatcher;J)V

    return-object v0
.end method

.method private sanitizeDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x20

    const/16 v0, 0xa0

    .line 141
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->lastLength:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    .line 125
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 126
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-interface {p1, p0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->lastLength:I

    return-void
.end method

.method synthetic lambda$createRangeErrorCallback$1$com-google-android-material-datepicker-DateFormatTextWatcher(J)V
    .locals 1

    .line 133
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->outOfRange:Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->sanitizeDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onInvalidDate()V

    return-void
.end method

.method synthetic lambda$new$0$com-google-android-material-datepicker-DateFormatTextWatcher(Ljava/lang/String;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_use:I

    .line 65
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->sanitizeDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 64
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_example:I

    .line 69
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    .line 71
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->sanitizeDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onInvalidDate()V

    return-void
.end method

.method onInvalidDate()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->setErrorCallback:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->setRangeErrorCallback:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x0

    .line 85
    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onValidDate(Ljava/lang/Long;)V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p2, p4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 94
    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 96
    invoke-virtual {p4}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 97
    invoke-virtual {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->isWithinBounds(J)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onValidDate(Ljava/lang/Long;)V

    return-void

    .line 102
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->createRangeErrorCallback(J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->setRangeErrorCallback:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->runValidation(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->setErrorCallback:Ljava/lang/Runnable;

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->runValidation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method abstract onValidDate(Ljava/lang/Long;)V
.end method

.method public runValidation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
