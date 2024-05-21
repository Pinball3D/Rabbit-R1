.class public final enum Lio/sentry/CheckInStatus;
.super Ljava/lang/Enum;
.source "CheckInStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/CheckInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/CheckInStatus;

.field public static final enum ERROR:Lio/sentry/CheckInStatus;

.field public static final enum IN_PROGRESS:Lio/sentry/CheckInStatus;

.field public static final enum OK:Lio/sentry/CheckInStatus;


# direct methods
.method private static synthetic $values()[Lio/sentry/CheckInStatus;
    .locals 3

    sget-object v0, Lio/sentry/CheckInStatus;->IN_PROGRESS:Lio/sentry/CheckInStatus;

    sget-object v1, Lio/sentry/CheckInStatus;->OK:Lio/sentry/CheckInStatus;

    sget-object v2, Lio/sentry/CheckInStatus;->ERROR:Lio/sentry/CheckInStatus;

    filled-new-array {v0, v1, v2}, [Lio/sentry/CheckInStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lio/sentry/CheckInStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/CheckInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/CheckInStatus;->IN_PROGRESS:Lio/sentry/CheckInStatus;

    .line 11
    new-instance v0, Lio/sentry/CheckInStatus;

    const-string v1, "OK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/CheckInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/CheckInStatus;->OK:Lio/sentry/CheckInStatus;

    .line 12
    new-instance v0, Lio/sentry/CheckInStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/CheckInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/CheckInStatus;->ERROR:Lio/sentry/CheckInStatus;

    .line 8
    invoke-static {}, Lio/sentry/CheckInStatus;->$values()[Lio/sentry/CheckInStatus;

    move-result-object v0

    sput-object v0, Lio/sentry/CheckInStatus;->$VALUES:[Lio/sentry/CheckInStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/CheckInStatus;
    .locals 1

    const-class v0, Lio/sentry/CheckInStatus;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/CheckInStatus;

    return-object p0
.end method

.method public static values()[Lio/sentry/CheckInStatus;
    .locals 1

    sget-object v0, Lio/sentry/CheckInStatus;->$VALUES:[Lio/sentry/CheckInStatus;

    .line 8
    invoke-virtual {v0}, [Lio/sentry/CheckInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/CheckInStatus;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/sentry/CheckInStatus;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
