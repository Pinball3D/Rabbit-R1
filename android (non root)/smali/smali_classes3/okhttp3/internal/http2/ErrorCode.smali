.class public final enum Lokhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/ErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/internal/http2/ErrorCode;",
        "",
        "httpCode",
        "",
        "(Ljava/lang/String;II)V",
        "getHttpCode",
        "()I",
        "NO_ERROR",
        "PROTOCOL_ERROR",
        "INTERNAL_ERROR",
        "FLOW_CONTROL_ERROR",
        "SETTINGS_TIMEOUT",
        "STREAM_CLOSED",
        "FRAME_SIZE_ERROR",
        "REFUSED_STREAM",
        "CANCEL",
        "COMPRESSION_ERROR",
        "CONNECT_ERROR",
        "ENHANCE_YOUR_CALM",
        "INADEQUATE_SECURITY",
        "HTTP_1_1_REQUIRED",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CONNECT_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

.field public static final enum ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FRAME_SIZE_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum SETTINGS_TIMEOUT:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum STREAM_CLOSED:Lokhttp3/internal/http2/ErrorCode;


# instance fields
.field private final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v1, Lokhttp3/internal/http2/ErrorCode;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    .line 23
    invoke-direct {v1, v2, v3, v3}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v2, Lokhttp3/internal/http2/ErrorCode;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x2

    .line 25
    invoke-direct {v2, v3, v4, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v3, Lokhttp3/internal/http2/ErrorCode;

    const-string v4, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    .line 27
    invoke-direct {v3, v4, v5, v5}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v4, Lokhttp3/internal/http2/ErrorCode;

    const-string v5, "SETTINGS_TIMEOUT"

    const/4 v6, 0x4

    .line 29
    invoke-direct {v4, v5, v6, v6}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lokhttp3/internal/http2/ErrorCode;->SETTINGS_TIMEOUT:Lokhttp3/internal/http2/ErrorCode;

    new-instance v5, Lokhttp3/internal/http2/ErrorCode;

    const-string v6, "STREAM_CLOSED"

    const/4 v7, 0x5

    .line 31
    invoke-direct {v5, v6, v7, v7}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lokhttp3/internal/http2/ErrorCode;->STREAM_CLOSED:Lokhttp3/internal/http2/ErrorCode;

    new-instance v6, Lokhttp3/internal/http2/ErrorCode;

    const-string v7, "FRAME_SIZE_ERROR"

    const/4 v8, 0x6

    .line 33
    invoke-direct {v6, v7, v8, v8}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lokhttp3/internal/http2/ErrorCode;->FRAME_SIZE_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v7, Lokhttp3/internal/http2/ErrorCode;

    const-string v8, "REFUSED_STREAM"

    const/4 v9, 0x7

    .line 35
    invoke-direct {v7, v8, v9, v9}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    new-instance v8, Lokhttp3/internal/http2/ErrorCode;

    const-string v9, "CANCEL"

    const/16 v10, 0x8

    .line 37
    invoke-direct {v8, v9, v10, v10}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    new-instance v9, Lokhttp3/internal/http2/ErrorCode;

    const-string v10, "COMPRESSION_ERROR"

    const/16 v11, 0x9

    .line 39
    invoke-direct {v9, v10, v11, v11}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lokhttp3/internal/http2/ErrorCode;->COMPRESSION_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v10, Lokhttp3/internal/http2/ErrorCode;

    const-string v11, "CONNECT_ERROR"

    const/16 v12, 0xa

    .line 41
    invoke-direct {v10, v11, v12, v12}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lokhttp3/internal/http2/ErrorCode;->CONNECT_ERROR:Lokhttp3/internal/http2/ErrorCode;

    new-instance v11, Lokhttp3/internal/http2/ErrorCode;

    const-string v12, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    .line 43
    invoke-direct {v11, v12, v13, v13}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lokhttp3/internal/http2/ErrorCode;->ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/ErrorCode;

    new-instance v12, Lokhttp3/internal/http2/ErrorCode;

    const-string v13, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    .line 45
    invoke-direct {v12, v13, v14, v14}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lokhttp3/internal/http2/ErrorCode;->INADEQUATE_SECURITY:Lokhttp3/internal/http2/ErrorCode;

    new-instance v13, Lokhttp3/internal/http2/ErrorCode;

    const-string v14, "HTTP_1_1_REQUIRED"

    const/16 v15, 0xd

    .line 47
    invoke-direct {v13, v14, v15, v15}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lokhttp3/internal/http2/ErrorCode;->HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/ErrorCode;

    filled-new-array/range {v0 .. v13}, [Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    new-instance v0, Lokhttp3/internal/http2/ErrorCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/ErrorCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    const-class v0, Lokhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/http2/ErrorCode;

    return-object p0
.end method

.method public static values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lokhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 0

    iget p0, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    return p0
.end method
