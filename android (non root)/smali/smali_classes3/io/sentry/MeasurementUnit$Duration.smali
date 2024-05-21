.class public final enum Lio/sentry/MeasurementUnit$Duration;
.super Ljava/lang/Enum;
.source "MeasurementUnit.java"

# interfaces
.implements Lio/sentry/MeasurementUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Duration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MeasurementUnit$Duration;",
        ">;",
        "Lio/sentry/MeasurementUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MeasurementUnit$Duration;

.field public static final enum DAY:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum HOUR:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum MICROSECOND:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum MINUTE:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum NANOSECOND:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum SECOND:Lio/sentry/MeasurementUnit$Duration;

.field public static final enum WEEK:Lio/sentry/MeasurementUnit$Duration;


# direct methods
.method private static synthetic $values()[Lio/sentry/MeasurementUnit$Duration;
    .locals 8

    sget-object v0, Lio/sentry/MeasurementUnit$Duration;->NANOSECOND:Lio/sentry/MeasurementUnit$Duration;

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MICROSECOND:Lio/sentry/MeasurementUnit$Duration;

    sget-object v2, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    sget-object v3, Lio/sentry/MeasurementUnit$Duration;->SECOND:Lio/sentry/MeasurementUnit$Duration;

    sget-object v4, Lio/sentry/MeasurementUnit$Duration;->MINUTE:Lio/sentry/MeasurementUnit$Duration;

    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->HOUR:Lio/sentry/MeasurementUnit$Duration;

    sget-object v6, Lio/sentry/MeasurementUnit$Duration;->DAY:Lio/sentry/MeasurementUnit$Duration;

    sget-object v7, Lio/sentry/MeasurementUnit$Duration;->WEEK:Lio/sentry/MeasurementUnit$Duration;

    filled-new-array/range {v0 .. v7}, [Lio/sentry/MeasurementUnit$Duration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "NANOSECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->NANOSECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 31
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "MICROSECOND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->MICROSECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 34
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "MILLISECOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 37
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "SECOND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->SECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 40
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "MINUTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->MINUTE:Lio/sentry/MeasurementUnit$Duration;

    .line 43
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "HOUR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->HOUR:Lio/sentry/MeasurementUnit$Duration;

    .line 46
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "DAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->DAY:Lio/sentry/MeasurementUnit$Duration;

    .line 49
    new-instance v0, Lio/sentry/MeasurementUnit$Duration;

    const-string v1, "WEEK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Duration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->WEEK:Lio/sentry/MeasurementUnit$Duration;

    .line 26
    invoke-static {}, Lio/sentry/MeasurementUnit$Duration;->$values()[Lio/sentry/MeasurementUnit$Duration;

    move-result-object v0

    sput-object v0, Lio/sentry/MeasurementUnit$Duration;->$VALUES:[Lio/sentry/MeasurementUnit$Duration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MeasurementUnit$Duration;
    .locals 1

    const-class v0, Lio/sentry/MeasurementUnit$Duration;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MeasurementUnit$Duration;

    return-object p0
.end method

.method public static values()[Lio/sentry/MeasurementUnit$Duration;
    .locals 1

    sget-object v0, Lio/sentry/MeasurementUnit$Duration;->$VALUES:[Lio/sentry/MeasurementUnit$Duration;

    .line 26
    invoke-virtual {v0}, [Lio/sentry/MeasurementUnit$Duration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MeasurementUnit$Duration;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Duration;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
