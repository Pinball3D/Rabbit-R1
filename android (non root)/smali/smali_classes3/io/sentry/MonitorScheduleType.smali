.class public final enum Lio/sentry/MonitorScheduleType;
.super Ljava/lang/Enum;
.source "MonitorScheduleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MonitorScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MonitorScheduleType;

.field public static final enum CRONTAB:Lio/sentry/MonitorScheduleType;

.field public static final enum INTERVAL:Lio/sentry/MonitorScheduleType;


# direct methods
.method private static synthetic $values()[Lio/sentry/MonitorScheduleType;
    .locals 2

    sget-object v0, Lio/sentry/MonitorScheduleType;->CRONTAB:Lio/sentry/MonitorScheduleType;

    sget-object v1, Lio/sentry/MonitorScheduleType;->INTERVAL:Lio/sentry/MonitorScheduleType;

    filled-new-array {v0, v1}, [Lio/sentry/MonitorScheduleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lio/sentry/MonitorScheduleType;

    const-string v1, "CRONTAB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleType;->CRONTAB:Lio/sentry/MonitorScheduleType;

    .line 11
    new-instance v0, Lio/sentry/MonitorScheduleType;

    const-string v1, "INTERVAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MonitorScheduleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MonitorScheduleType;->INTERVAL:Lio/sentry/MonitorScheduleType;

    .line 8
    invoke-static {}, Lio/sentry/MonitorScheduleType;->$values()[Lio/sentry/MonitorScheduleType;

    move-result-object v0

    sput-object v0, Lio/sentry/MonitorScheduleType;->$VALUES:[Lio/sentry/MonitorScheduleType;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MonitorScheduleType;
    .locals 1

    const-class v0, Lio/sentry/MonitorScheduleType;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MonitorScheduleType;

    return-object p0
.end method

.method public static values()[Lio/sentry/MonitorScheduleType;
    .locals 1

    sget-object v0, Lio/sentry/MonitorScheduleType;->$VALUES:[Lio/sentry/MonitorScheduleType;

    .line 8
    invoke-virtual {v0}, [Lio/sentry/MonitorScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MonitorScheduleType;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/sentry/MonitorScheduleType;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
