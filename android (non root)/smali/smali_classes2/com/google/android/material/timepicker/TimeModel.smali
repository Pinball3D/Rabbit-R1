.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FORMAT:Ljava/lang/String; = "%d"

.field public static final ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String; = "%02d"


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 59
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 67
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 68
    new-instance p1, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/16 p2, 0x3b

    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 69
    new-instance p1, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/4 p2, 0x1

    if-ne p4, p2, :cond_0

    const/16 p2, 0x17

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    :goto_0
    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const-string v0, "%02d"

    .line 192
    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 198
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPeriod(I)I
    .locals 1

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/timepicker/TimeModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 146
    :cond_1
    check-cast p1, Lcom/google/android/material/timepicker/TimeModel;

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 147
    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    iget v3, p1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iget p1, p1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getHourContentDescriptionResId()I
    .locals 1

    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 119
    sget p0, Lcom/google/android/material/R$string;->material_hour_24h_suffix:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/google/android/material/R$string;->material_hour_suffix:I

    :goto_0
    return p0
.end method

.method public getHourForDisplay()I
    .locals 4

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 103
    rem-int/lit8 p0, p0, 0x18

    return p0

    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 106
    rem-int/lit8 v2, v0, 0xc

    const/16 v3, 0xc

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne p0, v1, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    return v0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object p0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 133
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setHour(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 94
    rem-int/2addr p1, v0

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    return-void
.end method

.method public setHourOfDay(I)V
    .locals 1

    .line 78
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 98
    rem-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    if-nez p1, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 160
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 162
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 163
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
