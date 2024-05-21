.class public final enum Lorg/mediasoup/droid/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mediasoup/droid/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mediasoup/droid/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mediasoup/droid/Logger$LogLevel;

.field public static final enum LOG_DEBUG:Lorg/mediasoup/droid/Logger$LogLevel;

.field public static final enum LOG_ERROR:Lorg/mediasoup/droid/Logger$LogLevel;

.field public static final enum LOG_NONE:Lorg/mediasoup/droid/Logger$LogLevel;

.field public static final enum LOG_TRACE:Lorg/mediasoup/droid/Logger$LogLevel;

.field public static final enum LOG_WARN:Lorg/mediasoup/droid/Logger$LogLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lorg/mediasoup/droid/Logger$LogLevel;

    const-string v1, "LOG_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/mediasoup/droid/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mediasoup/droid/Logger$LogLevel;->LOG_NONE:Lorg/mediasoup/droid/Logger$LogLevel;

    .line 21
    new-instance v1, Lorg/mediasoup/droid/Logger$LogLevel;

    const-string v2, "LOG_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/mediasoup/droid/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mediasoup/droid/Logger$LogLevel;->LOG_ERROR:Lorg/mediasoup/droid/Logger$LogLevel;

    .line 22
    new-instance v2, Lorg/mediasoup/droid/Logger$LogLevel;

    const-string v3, "LOG_WARN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/mediasoup/droid/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/mediasoup/droid/Logger$LogLevel;->LOG_WARN:Lorg/mediasoup/droid/Logger$LogLevel;

    .line 23
    new-instance v3, Lorg/mediasoup/droid/Logger$LogLevel;

    const-string v4, "LOG_DEBUG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/mediasoup/droid/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/mediasoup/droid/Logger$LogLevel;->LOG_DEBUG:Lorg/mediasoup/droid/Logger$LogLevel;

    .line 24
    new-instance v4, Lorg/mediasoup/droid/Logger$LogLevel;

    const-string v5, "LOG_TRACE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/mediasoup/droid/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/mediasoup/droid/Logger$LogLevel;->LOG_TRACE:Lorg/mediasoup/droid/Logger$LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/mediasoup/droid/Logger$LogLevel;

    move-result-object v0

    sput-object v0, Lorg/mediasoup/droid/Logger$LogLevel;->$VALUES:[Lorg/mediasoup/droid/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mediasoup/droid/Logger$LogLevel;->value:I

    return-void
.end method

.method public static getLogLevel(I)Lorg/mediasoup/droid/Logger$LogLevel;
    .locals 3

    .line 38
    invoke-static {}, Lorg/mediasoup/droid/Logger$LogLevel;->values()[Lorg/mediasoup/droid/Logger$LogLevel;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 40
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/mediasoup/droid/Logger$LogLevel;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 41
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong log level"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mediasoup/droid/Logger$LogLevel;
    .locals 1

    const-class v0, Lorg/mediasoup/droid/Logger$LogLevel;

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mediasoup/droid/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lorg/mediasoup/droid/Logger$LogLevel;
    .locals 1

    sget-object v0, Lorg/mediasoup/droid/Logger$LogLevel;->$VALUES:[Lorg/mediasoup/droid/Logger$LogLevel;

    .line 19
    invoke-virtual {v0}, [Lorg/mediasoup/droid/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mediasoup/droid/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 0

    iget p0, p0, Lorg/mediasoup/droid/Logger$LogLevel;->value:I

    return p0
.end method
