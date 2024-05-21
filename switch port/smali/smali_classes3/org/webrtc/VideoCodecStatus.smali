.class public final enum Lorg/webrtc/VideoCodecStatus;
.super Ljava/lang/Enum;
.source "VideoCodecStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/VideoCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/VideoCodecStatus;

.field public static final enum ERROR:Lorg/webrtc/VideoCodecStatus;

.field public static final enum ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

.field public static final enum ERR_REQUEST_SLI:Lorg/webrtc/VideoCodecStatus;

.field public static final enum ERR_SIZE:Lorg/webrtc/VideoCodecStatus;

.field public static final enum FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

.field public static final enum LEVEL_EXCEEDED:Lorg/webrtc/VideoCodecStatus;

.field public static final enum MEMORY:Lorg/webrtc/VideoCodecStatus;

.field public static final enum NO_OUTPUT:Lorg/webrtc/VideoCodecStatus;

.field public static final enum OK:Lorg/webrtc/VideoCodecStatus;

.field public static final enum REQUEST_SLI:Lorg/webrtc/VideoCodecStatus;

.field public static final enum TARGET_BITRATE_OVERSHOOT:Lorg/webrtc/VideoCodecStatus;

.field public static final enum TIMEOUT:Lorg/webrtc/VideoCodecStatus;

.field public static final enum UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lorg/webrtc/VideoCodecStatus;

    const-string v1, "REQUEST_SLI"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/VideoCodecStatus;->REQUEST_SLI:Lorg/webrtc/VideoCodecStatus;

    .line 19
    new-instance v1, Lorg/webrtc/VideoCodecStatus;

    const-string v4, "NO_OUTPUT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/webrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/webrtc/VideoCodecStatus;

    .line 20
    new-instance v4, Lorg/webrtc/VideoCodecStatus;

    const-string v5, "OK"

    invoke-direct {v4, v5, v3, v2}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    .line 21
    new-instance v3, Lorg/webrtc/VideoCodecStatus;

    const/4 v2, 0x3

    const/4 v5, -0x1

    const-string v6, "ERROR"

    invoke-direct {v3, v6, v2, v5}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    .line 22
    new-instance v5, Lorg/webrtc/VideoCodecStatus;

    const/4 v2, 0x4

    const/4 v6, -0x2

    const-string v7, "LEVEL_EXCEEDED"

    invoke-direct {v5, v7, v2, v6}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/webrtc/VideoCodecStatus;->LEVEL_EXCEEDED:Lorg/webrtc/VideoCodecStatus;

    .line 23
    new-instance v6, Lorg/webrtc/VideoCodecStatus;

    const/4 v2, 0x5

    const/4 v7, -0x3

    const-string v8, "MEMORY"

    invoke-direct {v6, v8, v2, v7}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/webrtc/VideoCodecStatus;->MEMORY:Lorg/webrtc/VideoCodecStatus;

    .line 24
    new-instance v7, Lorg/webrtc/VideoCodecStatus;

    const/4 v2, 0x6

    const/4 v8, -0x4

    const-string v9, "ERR_PARAMETER"

    invoke-direct {v7, v9, v2, v8}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/VideoCodecStatus;

    .line 25
    new-instance v8, Lorg/webrtc/VideoCodecStatus;

    const/4 v2, 0x7

    const/4 v9, -0x5

    const-string v10, "ERR_SIZE"

    invoke-direct {v8, v10, v2, v9}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/webrtc/VideoCodecStatus;->ERR_SIZE:Lorg/webrtc/VideoCodecStatus;

    .line 26
    new-instance v9, Lorg/webrtc/VideoCodecStatus;

    const/16 v2, 0x8

    const/4 v10, -0x6

    const-string v11, "TIMEOUT"

    invoke-direct {v9, v11, v2, v10}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/webrtc/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/VideoCodecStatus;

    .line 27
    new-instance v10, Lorg/webrtc/VideoCodecStatus;

    const/16 v2, 0x9

    const/4 v11, -0x7

    const-string v12, "UNINITIALIZED"

    invoke-direct {v10, v12, v2, v11}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/webrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;

    .line 28
    new-instance v11, Lorg/webrtc/VideoCodecStatus;

    const/16 v2, 0xa

    const/16 v12, -0xc

    const-string v13, "ERR_REQUEST_SLI"

    invoke-direct {v11, v13, v2, v12}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/webrtc/VideoCodecStatus;->ERR_REQUEST_SLI:Lorg/webrtc/VideoCodecStatus;

    .line 29
    new-instance v12, Lorg/webrtc/VideoCodecStatus;

    const/16 v2, 0xb

    const/16 v13, -0xd

    const-string v14, "FALLBACK_SOFTWARE"

    invoke-direct {v12, v14, v2, v13}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    .line 30
    new-instance v13, Lorg/webrtc/VideoCodecStatus;

    const/16 v2, 0xc

    const/16 v14, -0xe

    const-string v15, "TARGET_BITRATE_OVERSHOOT"

    invoke-direct {v13, v15, v2, v14}, Lorg/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/webrtc/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lorg/webrtc/VideoCodecStatus;

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    filled-new-array/range {v0 .. v12}, [Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    sput-object v0, Lorg/webrtc/VideoCodecStatus;->$VALUES:[Lorg/webrtc/VideoCodecStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/webrtc/VideoCodecStatus;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/VideoCodecStatus;
    .locals 1

    const-class v0, Lorg/webrtc/VideoCodecStatus;

    .line 17
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/VideoCodecStatus;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/VideoCodecStatus;
    .locals 1

    sget-object v0, Lorg/webrtc/VideoCodecStatus;->$VALUES:[Lorg/webrtc/VideoCodecStatus;

    .line 17
    invoke-virtual {v0}, [Lorg/webrtc/VideoCodecStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/VideoCodecStatus;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoCodecStatus;->number:I

    return p0
.end method
