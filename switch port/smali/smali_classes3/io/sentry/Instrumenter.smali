.class public final enum Lio/sentry/Instrumenter;
.super Ljava/lang/Enum;
.source "Instrumenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/Instrumenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/Instrumenter;

.field public static final enum OTEL:Lio/sentry/Instrumenter;

.field public static final enum SENTRY:Lio/sentry/Instrumenter;


# direct methods
.method private static synthetic $values()[Lio/sentry/Instrumenter;
    .locals 2

    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    sget-object v1, Lio/sentry/Instrumenter;->OTEL:Lio/sentry/Instrumenter;

    filled-new-array {v0, v1}, [Lio/sentry/Instrumenter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lio/sentry/Instrumenter;

    const-string v1, "SENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/Instrumenter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 11
    new-instance v0, Lio/sentry/Instrumenter;

    const-string v1, "OTEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/Instrumenter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Instrumenter;->OTEL:Lio/sentry/Instrumenter;

    .line 7
    invoke-static {}, Lio/sentry/Instrumenter;->$values()[Lio/sentry/Instrumenter;

    move-result-object v0

    sput-object v0, Lio/sentry/Instrumenter;->$VALUES:[Lio/sentry/Instrumenter;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/Instrumenter;
    .locals 1

    const-class v0, Lio/sentry/Instrumenter;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/Instrumenter;

    return-object p0
.end method

.method public static values()[Lio/sentry/Instrumenter;
    .locals 1

    sget-object v0, Lio/sentry/Instrumenter;->$VALUES:[Lio/sentry/Instrumenter;

    .line 7
    invoke-virtual {v0}, [Lio/sentry/Instrumenter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/Instrumenter;

    return-object v0
.end method
