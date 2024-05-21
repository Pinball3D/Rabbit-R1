.class public final enum Lio/sentry/hints/EventDropReason;
.super Ljava/lang/Enum;
.source "EventDropReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/hints/EventDropReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/hints/EventDropReason;

.field public static final enum MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;


# direct methods
.method private static synthetic $values()[Lio/sentry/hints/EventDropReason;
    .locals 1

    sget-object v0, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    filled-new-array {v0}, [Lio/sentry/hints/EventDropReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lio/sentry/hints/EventDropReason;

    const-string v1, "MULTITHREADED_DEDUPLICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/hints/EventDropReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    .line 6
    invoke-static {}, Lio/sentry/hints/EventDropReason;->$values()[Lio/sentry/hints/EventDropReason;

    move-result-object v0

    sput-object v0, Lio/sentry/hints/EventDropReason;->$VALUES:[Lio/sentry/hints/EventDropReason;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/hints/EventDropReason;
    .locals 1

    const-class v0, Lio/sentry/hints/EventDropReason;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/hints/EventDropReason;

    return-object p0
.end method

.method public static values()[Lio/sentry/hints/EventDropReason;
    .locals 1

    sget-object v0, Lio/sentry/hints/EventDropReason;->$VALUES:[Lio/sentry/hints/EventDropReason;

    .line 6
    invoke-virtual {v0}, [Lio/sentry/hints/EventDropReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/hints/EventDropReason;

    return-object v0
.end method
