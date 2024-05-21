.class public final enum Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "ParsedResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum GEO:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum ISBN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum SMS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEL:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEXT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum URI:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum VIN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum WIFI:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 27
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "ADDRESSBOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    .line 28
    new-instance v1, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v2, "EMAIL_ADDRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 29
    new-instance v2, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v3, "PRODUCT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 30
    new-instance v3, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v4, "URI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 31
    new-instance v4, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v5, "TEXT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 32
    new-instance v5, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v6, "GEO"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    .line 33
    new-instance v6, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v7, "TEL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    .line 34
    new-instance v7, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v8, "SMS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 35
    new-instance v8, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v9, "CALENDAR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    new-instance v9, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v10, "WIFI"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 37
    new-instance v10, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v11, "ISBN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    .line 38
    new-instance v11, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v12, "VIN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    filled-new-array/range {v0 .. v11}, [Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->$VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    const-class v0, Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/result/ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->$VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    invoke-virtual {v0}, [Lcom/google/zxing/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method
