.class public final enum Lio/sentry/MonitorScheduleUnit;
.super Ljava/lang/Enum;
.source "MonitorScheduleUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MonitorScheduleUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MonitorScheduleUnit;

.field public static final enum DAY:Lio/sentry/MonitorScheduleUnit;

.field public static final enum HOUR:Lio/sentry/MonitorScheduleUnit;

.field public static final enum MINUTE:Lio/sentry/MonitorScheduleUnit;

.field public static final enum MONTH:Lio/sentry/MonitorScheduleUnit;

.field public static final enum WEEK:Lio/sentry/MonitorScheduleUnit;

.field public static final enum YEAR:Lio/sentry/MonitorScheduleUnit;


# direct methods
.method private static synthetic $values()[Lio/sentry/MonitorScheduleUnit;
    .locals 6

    sget-object v0, Lio/sentry/MonitorScheduleUnit;->MINUTE:Lio/sentry/MonitorScheduleUnit;

    sget-object v1, Lio/sentry/MonitorScheduleUnit;->HOUR:Lio/sentry/MonitorScheduleUnit;

    sget-object v2, Lio/sentry/MonitorScheduleUnit;->DAY:Lio/sentry/MonitorScheduleUnit;

    sget-object v3, Lio/sentry/MonitorScheduleUnit;->WEEK:Lio/sentry/MonitorScheduleUnit;

    sget-object v4, Lio/sentry/MonitorScheduleUnit;->MONTH:Lio/sentry/MonitorScheduleUnit;

    sget-object v5, Lio/sentry/MonitorScheduleUnit;->YEAR:Lio/sentry/MonitorScheduleUnit;

    filled-new-array/range {v0 .. v5}, [Lio/sentry/MonitorScheduleUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "MINUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->MINUTE:Lio/sentry/MonitorScheduleUnit;

    .line 11
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "HOUR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->HOUR:Lio/sentry/MonitorScheduleUnit;

    .line 12
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "DAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->DAY:Lio/sentry/MonitorScheduleUnit;

    .line 13
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "WEEK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->WEEK:Lio/sentry/MonitorScheduleUnit;

    .line 14
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "MONTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->MONTH:Lio/sentry/MonitorScheduleUnit;

    .line 15
    new-instance v0, Lio/sentry/MonitorScheduleUnit;

    const-string v1, "YEAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->YEAR:Lio/sentry/MonitorScheduleUnit;

    .line 8
    invoke-static {}, Lio/sentry/MonitorScheduleUnit;->$values()[Lio/sentry/MonitorScheduleUnit;

    move-result-object v0

    sput-object v0, Lio/sentry/MonitorScheduleUnit;->$VALUES:[Lio/sentry/MonitorScheduleUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MonitorScheduleUnit;
    .locals 1

    const-class v0, Lio/sentry/MonitorScheduleUnit;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MonitorScheduleUnit;

    return-object p0
.end method

.method public static values()[Lio/sentry/MonitorScheduleUnit;
    .locals 1

    sget-object v0, Lio/sentry/MonitorScheduleUnit;->$VALUES:[Lio/sentry/MonitorScheduleUnit;

    .line 8
    invoke-virtual {v0}, [Lio/sentry/MonitorScheduleUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MonitorScheduleUnit;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lio/sentry/MonitorScheduleUnit;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
