.class final enum Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
.super Ljava/lang/Enum;
.source "AnrV2Integration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration$ParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

.field public static final enum DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

.field public static final enum ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

.field public static final enum NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    .locals 3

    sget-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    filled-new-array {v0, v1, v2}, [Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 395
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    const-string v1, "DUMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 396
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    const-string v1, "NO_DUMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 397
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 394
    invoke-static {}, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->$values()[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->$VALUES:[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    .locals 1

    const-class v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 394
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    .locals 1

    sget-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->$VALUES:[Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 394
    invoke-virtual {v0}, [Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    return-object v0
.end method
