.class public final enum Lio/sentry/SentryLevel;
.super Ljava/lang/Enum;
.source "SentryLevel.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLevel$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryLevel;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryLevel;

.field public static final enum DEBUG:Lio/sentry/SentryLevel;

.field public static final enum ERROR:Lio/sentry/SentryLevel;

.field public static final enum FATAL:Lio/sentry/SentryLevel;

.field public static final enum INFO:Lio/sentry/SentryLevel;

.field public static final enum WARNING:Lio/sentry/SentryLevel;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryLevel;
    .locals 5

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v4, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/SentryLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 10
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 11
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 12
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 13
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "FATAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 8
    invoke-static {}, Lio/sentry/SentryLevel;->$values()[Lio/sentry/SentryLevel;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryLevel;->$VALUES:[Lio/sentry/SentryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;
    .locals 1

    const-class v0, Lio/sentry/SentryLevel;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryLevel;
    .locals 1

    sget-object v0, Lio/sentry/SentryLevel;->$VALUES:[Lio/sentry/SentryLevel;

    .line 8
    invoke-virtual {v0}, [Lio/sentry/SentryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryLevel;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method
