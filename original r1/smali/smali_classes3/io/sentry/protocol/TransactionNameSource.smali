.class public final enum Lio/sentry/protocol/TransactionNameSource;
.super Ljava/lang/Enum;
.source "TransactionNameSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/protocol/TransactionNameSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/protocol/TransactionNameSource;

.field public static final enum COMPONENT:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum CUSTOM:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum ROUTE:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum TASK:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum URL:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum VIEW:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method private static synthetic $values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 6

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    sget-object v2, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    sget-object v4, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    filled-new-array/range {v0 .. v5}, [Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 29
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 41
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "ROUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    .line 52
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "VIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    .line 64
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "COMPONENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 75
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "TASK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    .line 6
    invoke-static {}, Lio/sentry/protocol/TransactionNameSource;->$values()[Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    const-class v0, Lio/sentry/protocol/TransactionNameSource;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/TransactionNameSource;

    return-object p0
.end method

.method public static values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    .line 6
    invoke-virtual {v0}, [Lio/sentry/protocol/TransactionNameSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lio/sentry/protocol/TransactionNameSource;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
