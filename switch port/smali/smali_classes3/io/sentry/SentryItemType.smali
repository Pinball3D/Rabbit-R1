.class public final enum Lio/sentry/SentryItemType;
.super Ljava/lang/Enum;
.source "SentryItemType.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryItemType$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryItemType;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryItemType;

.field public static final enum Attachment:Lio/sentry/SentryItemType;

.field public static final enum CheckIn:Lio/sentry/SentryItemType;

.field public static final enum ClientReport:Lio/sentry/SentryItemType;

.field public static final enum Event:Lio/sentry/SentryItemType;

.field public static final enum Profile:Lio/sentry/SentryItemType;

.field public static final enum ReplayEvent:Lio/sentry/SentryItemType;

.field public static final enum ReplayRecording:Lio/sentry/SentryItemType;

.field public static final enum Session:Lio/sentry/SentryItemType;

.field public static final enum Statsd:Lio/sentry/SentryItemType;

.field public static final enum Transaction:Lio/sentry/SentryItemType;

.field public static final enum Unknown:Lio/sentry/SentryItemType;

.field public static final enum UserFeedback:Lio/sentry/SentryItemType;


# instance fields
.field private final itemType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryItemType;
    .locals 12

    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    sget-object v2, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    sget-object v3, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    sget-object v4, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    sget-object v5, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    sget-object v6, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    sget-object v7, Lio/sentry/SentryItemType;->ReplayEvent:Lio/sentry/SentryItemType;

    sget-object v8, Lio/sentry/SentryItemType;->ReplayRecording:Lio/sentry/SentryItemType;

    sget-object v9, Lio/sentry/SentryItemType;->CheckIn:Lio/sentry/SentryItemType;

    sget-object v10, Lio/sentry/SentryItemType;->Statsd:Lio/sentry/SentryItemType;

    sget-object v11, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    filled-new-array/range {v0 .. v11}, [Lio/sentry/SentryItemType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x0

    const-string v2, "session"

    const-string v3, "Session"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 13
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x1

    const-string v2, "event"

    const-string v3, "Event"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 14
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x2

    const-string v2, "user_report"

    const-string v3, "UserFeedback"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    .line 15
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x3

    const-string v2, "attachment"

    const-string v3, "Attachment"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 16
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x4

    const-string v2, "transaction"

    const-string v3, "Transaction"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 17
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x5

    const-string v2, "profile"

    const-string v3, "Profile"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    .line 18
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x6

    const-string v2, "client_report"

    const-string v3, "ClientReport"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    .line 19
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x7

    const-string v2, "replay_event"

    const-string v3, "ReplayEvent"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ReplayEvent:Lio/sentry/SentryItemType;

    .line 20
    new-instance v0, Lio/sentry/SentryItemType;

    const/16 v1, 0x8

    const-string v2, "replay_recording"

    const-string v3, "ReplayRecording"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ReplayRecording:Lio/sentry/SentryItemType;

    .line 21
    new-instance v0, Lio/sentry/SentryItemType;

    const/16 v1, 0x9

    const-string v2, "check_in"

    const-string v3, "CheckIn"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->CheckIn:Lio/sentry/SentryItemType;

    .line 22
    new-instance v0, Lio/sentry/SentryItemType;

    const/16 v1, 0xa

    const-string v2, "statsd"

    const-string v3, "Statsd"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Statsd:Lio/sentry/SentryItemType;

    .line 23
    new-instance v0, Lio/sentry/SentryItemType;

    const/16 v1, 0xb

    const-string v2, "__unknown__"

    const-string v3, "Unknown"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    .line 10
    invoke-static {}, Lio/sentry/SentryItemType;->$values()[Lio/sentry/SentryItemType;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;
    .locals 1

    .line 28
    instance-of v0, p0, Lio/sentry/SentryEvent;

    if-eqz v0, :cond_0

    sget-object p0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    return-object p0

    .line 30
    :cond_0
    instance-of v0, p0, Lio/sentry/protocol/SentryTransaction;

    if-eqz v0, :cond_1

    sget-object p0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    return-object p0

    .line 32
    :cond_1
    instance-of v0, p0, Lio/sentry/Session;

    if-eqz v0, :cond_2

    sget-object p0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    return-object p0

    .line 34
    :cond_2
    instance-of p0, p0, Lio/sentry/clientreport/ClientReport;

    if-eqz p0, :cond_3

    sget-object p0, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    return-object p0

    :cond_3
    sget-object p0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 1

    const-class v0, Lio/sentry/SentryItemType;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOfLabel(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 5

    .line 50
    invoke-static {}, Lio/sentry/SentryItemType;->values()[Lio/sentry/SentryItemType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    iget-object v4, v3, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryItemType;
    .locals 1

    sget-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    .line 10
    invoke-virtual {v0}, [Lio/sentry/SentryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryItemType;

    return-object v0
.end method


# virtual methods
.method public getItemType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    .line 61
    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method
