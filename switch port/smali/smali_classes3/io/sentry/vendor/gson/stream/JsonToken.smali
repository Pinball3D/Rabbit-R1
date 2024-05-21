.class public final enum Lio/sentry/vendor/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/vendor/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum NAME:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum NULL:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

.field public static final enum STRING:Lio/sentry/vendor/gson/stream/JsonToken;


# direct methods
.method private static synthetic $values()[Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 10

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    sget-object v9, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    filled-new-array/range {v0 .. v9}, [Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 45
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 51
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 57
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "END_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 64
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 69
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 75
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 80
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 85
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 92
    new-instance v0, Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 32
    invoke-static {}, Lio/sentry/vendor/gson/stream/JsonToken;->$values()[Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->$VALUES:[Lio/sentry/vendor/gson/stream/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 1

    const-class v0, Lio/sentry/vendor/gson/stream/JsonToken;

    .line 32
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0
.end method

.method public static values()[Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 1

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->$VALUES:[Lio/sentry/vendor/gson/stream/JsonToken;

    .line 32
    invoke-virtual {v0}, [Lio/sentry/vendor/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v0
.end method
