.class public final enum Lio/sentry/SpanStatus;
.super Ljava/lang/Enum;
.source "SpanStatus.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SpanStatus$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SpanStatus;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SpanStatus;

.field public static final enum ABORTED:Lio/sentry/SpanStatus;

.field public static final enum ALREADY_EXISTS:Lio/sentry/SpanStatus;

.field public static final enum CANCELLED:Lio/sentry/SpanStatus;

.field public static final enum DATA_LOSS:Lio/sentry/SpanStatus;

.field public static final enum DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

.field public static final enum FAILED_PRECONDITION:Lio/sentry/SpanStatus;

.field public static final enum INTERNAL_ERROR:Lio/sentry/SpanStatus;

.field public static final enum INVALID_ARGUMENT:Lio/sentry/SpanStatus;

.field public static final enum NOT_FOUND:Lio/sentry/SpanStatus;

.field public static final enum OK:Lio/sentry/SpanStatus;

.field public static final enum OUT_OF_RANGE:Lio/sentry/SpanStatus;

.field public static final enum PERMISSION_DENIED:Lio/sentry/SpanStatus;

.field public static final enum RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

.field public static final enum UNAUTHENTICATED:Lio/sentry/SpanStatus;

.field public static final enum UNAVAILABLE:Lio/sentry/SpanStatus;

.field public static final enum UNIMPLEMENTED:Lio/sentry/SpanStatus;

.field public static final enum UNKNOWN:Lio/sentry/SpanStatus;

.field public static final enum UNKNOWN_ERROR:Lio/sentry/SpanStatus;


# instance fields
.field private final maxHttpStatusCode:I

.field private final minHttpStatusCode:I


# direct methods
.method private static synthetic $values()[Lio/sentry/SpanStatus;
    .locals 18

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    sget-object v3, Lio/sentry/SpanStatus;->UNKNOWN:Lio/sentry/SpanStatus;

    sget-object v4, Lio/sentry/SpanStatus;->UNKNOWN_ERROR:Lio/sentry/SpanStatus;

    sget-object v5, Lio/sentry/SpanStatus;->INVALID_ARGUMENT:Lio/sentry/SpanStatus;

    sget-object v6, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    sget-object v7, Lio/sentry/SpanStatus;->NOT_FOUND:Lio/sentry/SpanStatus;

    sget-object v8, Lio/sentry/SpanStatus;->ALREADY_EXISTS:Lio/sentry/SpanStatus;

    sget-object v9, Lio/sentry/SpanStatus;->PERMISSION_DENIED:Lio/sentry/SpanStatus;

    sget-object v10, Lio/sentry/SpanStatus;->RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

    sget-object v11, Lio/sentry/SpanStatus;->FAILED_PRECONDITION:Lio/sentry/SpanStatus;

    sget-object v12, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    sget-object v13, Lio/sentry/SpanStatus;->OUT_OF_RANGE:Lio/sentry/SpanStatus;

    sget-object v14, Lio/sentry/SpanStatus;->UNIMPLEMENTED:Lio/sentry/SpanStatus;

    sget-object v15, Lio/sentry/SpanStatus;->UNAVAILABLE:Lio/sentry/SpanStatus;

    sget-object v16, Lio/sentry/SpanStatus;->DATA_LOSS:Lio/sentry/SpanStatus;

    sget-object v17, Lio/sentry/SpanStatus;->UNAUTHENTICATED:Lio/sentry/SpanStatus;

    filled-new-array/range {v0 .. v17}, [Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0xc8

    const/16 v2, 0x12b

    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 12
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v1, 0x1

    const/16 v2, 0x1f3

    const-string v3, "CANCELLED"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    .line 17
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x2

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    .line 19
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNKNOWN:Lio/sentry/SpanStatus;

    .line 21
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNKNOWN_ERROR:Lio/sentry/SpanStatus;

    .line 23
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x5

    const/16 v4, 0x190

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->INVALID_ARGUMENT:Lio/sentry/SpanStatus;

    .line 25
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v1, 0x6

    const/16 v2, 0x1f8

    const-string v5, "DEADLINE_EXCEEDED"

    invoke-direct {v0, v5, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 28
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v1, 0x7

    const/16 v2, 0x194

    const-string v5, "NOT_FOUND"

    invoke-direct {v0, v5, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->NOT_FOUND:Lio/sentry/SpanStatus;

    .line 31
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "ALREADY_EXISTS"

    const/16 v2, 0x8

    const/16 v5, 0x199

    invoke-direct {v0, v1, v2, v5}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->ALREADY_EXISTS:Lio/sentry/SpanStatus;

    .line 34
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0x9

    const/16 v2, 0x193

    const-string v6, "PERMISSION_DENIED"

    invoke-direct {v0, v6, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->PERMISSION_DENIED:Lio/sentry/SpanStatus;

    .line 37
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0xa

    const/16 v2, 0x1ad

    const-string v6, "RESOURCE_EXHAUSTED"

    invoke-direct {v0, v6, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

    .line 40
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "FAILED_PRECONDITION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->FAILED_PRECONDITION:Lio/sentry/SpanStatus;

    .line 43
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "ABORTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    .line 46
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "OUT_OF_RANGE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->OUT_OF_RANGE:Lio/sentry/SpanStatus;

    .line 49
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0xe

    const/16 v2, 0x1f5

    const-string v4, "UNIMPLEMENTED"

    invoke-direct {v0, v4, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNIMPLEMENTED:Lio/sentry/SpanStatus;

    .line 52
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0xf

    const/16 v2, 0x1f7

    const-string v4, "UNAVAILABLE"

    invoke-direct {v0, v4, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNAVAILABLE:Lio/sentry/SpanStatus;

    .line 55
    new-instance v0, Lio/sentry/SpanStatus;

    const-string v1, "DATA_LOSS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->DATA_LOSS:Lio/sentry/SpanStatus;

    .line 58
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v1, 0x11

    const/16 v2, 0x191

    const-string v3, "UNAUTHENTICATED"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNAUTHENTICATED:Lio/sentry/SpanStatus;

    .line 8
    invoke-static {}, Lio/sentry/SpanStatus;->$values()[Lio/sentry/SpanStatus;

    move-result-object v0

    sput-object v0, Lio/sentry/SpanStatus;->$VALUES:[Lio/sentry/SpanStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    iput p3, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    iput p4, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    return-void
.end method

.method public static fromHttpStatusCode(I)Lio/sentry/SpanStatus;
    .locals 5

    .line 80
    invoke-static {}, Lio/sentry/SpanStatus;->values()[Lio/sentry/SpanStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-direct {v3, p0}, Lio/sentry/SpanStatus;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromHttpStatusCode(Ljava/lang/Integer;Lio/sentry/SpanStatus;)Lio/sentry/SpanStatus;
    .locals 0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lio/sentry/SpanStatus;->fromHttpStatusCode(I)Lio/sentry/SpanStatus;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method private matches(I)Z
    .locals 1

    iget v0, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SpanStatus;
    .locals 1

    const-class v0, Lio/sentry/SpanStatus;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SpanStatus;

    return-object p0
.end method

.method public static values()[Lio/sentry/SpanStatus;
    .locals 1

    sget-object v0, Lio/sentry/SpanStatus;->$VALUES:[Lio/sentry/SpanStatus;

    .line 8
    invoke-virtual {v0}, [Lio/sentry/SpanStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SpanStatus;

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

    .line 111
    invoke-virtual {p0}, Lio/sentry/SpanStatus;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method
