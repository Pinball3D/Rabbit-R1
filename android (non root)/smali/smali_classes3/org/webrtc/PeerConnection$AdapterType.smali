.class public final enum Lorg/webrtc/PeerConnection$AdapterType;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/PeerConnection$AdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum ADAPTER_TYPE_ANY:Lorg/webrtc/PeerConnection$AdapterType;

.field private static final BY_BITMASK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/webrtc/PeerConnection$AdapterType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CELLULAR:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_2G:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_3G:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_4G:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_5G:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum ETHERNET:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum LOOPBACK:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum UNKNOWN:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum VPN:Lorg/webrtc/PeerConnection$AdapterType;

.field public static final enum WIFI:Lorg/webrtc/PeerConnection$AdapterType;


# instance fields
.field public final bitMask:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 386
    new-instance v0, Lorg/webrtc/PeerConnection$AdapterType;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v11, v1}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lorg/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lorg/webrtc/PeerConnection$AdapterType;

    .line 387
    new-instance v1, Lorg/webrtc/PeerConnection$AdapterType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ETHERNET"

    invoke-direct {v1, v4, v2, v3}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lorg/webrtc/PeerConnection$AdapterType;->ETHERNET:Lorg/webrtc/PeerConnection$AdapterType;

    .line 388
    new-instance v2, Lorg/webrtc/PeerConnection$AdapterType;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-direct {v2, v5, v3, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lorg/webrtc/PeerConnection$AdapterType;->WIFI:Lorg/webrtc/PeerConnection$AdapterType;

    .line 389
    new-instance v3, Lorg/webrtc/PeerConnection$AdapterType;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "CELLULAR"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v5}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v3, Lorg/webrtc/PeerConnection$AdapterType;->CELLULAR:Lorg/webrtc/PeerConnection$AdapterType;

    .line 390
    new-instance v5, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "VPN"

    invoke-direct {v5, v8, v4, v7}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lorg/webrtc/PeerConnection$AdapterType;->VPN:Lorg/webrtc/PeerConnection$AdapterType;

    .line 391
    new-instance v7, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "LOOPBACK"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v7, Lorg/webrtc/PeerConnection$AdapterType;->LOOPBACK:Lorg/webrtc/PeerConnection$AdapterType;

    .line 392
    new-instance v8, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "ADAPTER_TYPE_ANY"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v8, Lorg/webrtc/PeerConnection$AdapterType;->ADAPTER_TYPE_ANY:Lorg/webrtc/PeerConnection$AdapterType;

    .line 393
    new-instance v9, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "CELLULAR_2G"

    const/4 v12, 0x7

    invoke-direct {v9, v10, v12, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v9, Lorg/webrtc/PeerConnection$AdapterType;->CELLULAR_2G:Lorg/webrtc/PeerConnection$AdapterType;

    .line 394
    new-instance v10, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v12, "CELLULAR_3G"

    invoke-direct {v10, v12, v6, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v10, Lorg/webrtc/PeerConnection$AdapterType;->CELLULAR_3G:Lorg/webrtc/PeerConnection$AdapterType;

    .line 395
    new-instance v12, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "CELLULAR_4G"

    const/16 v13, 0x9

    invoke-direct {v12, v6, v13, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v12, Lorg/webrtc/PeerConnection$AdapterType;->CELLULAR_4G:Lorg/webrtc/PeerConnection$AdapterType;

    .line 396
    new-instance v13, Lorg/webrtc/PeerConnection$AdapterType;

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "CELLULAR_5G"

    const/16 v14, 0xa

    invoke-direct {v13, v6, v14, v4}, Lorg/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v13, Lorg/webrtc/PeerConnection$AdapterType;->CELLULAR_5G:Lorg/webrtc/PeerConnection$AdapterType;

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v12

    move-object v10, v13

    filled-new-array/range {v0 .. v10}, [Lorg/webrtc/PeerConnection$AdapterType;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnection$AdapterType;->$VALUES:[Lorg/webrtc/PeerConnection$AdapterType;

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    .line 404
    invoke-static {}, Lorg/webrtc/PeerConnection$AdapterType;->values()[Lorg/webrtc/PeerConnection$AdapterType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v11, v1, :cond_0

    aget-object v2, v0, v11

    sget-object v3, Lorg/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    .line 405
    iget-object v4, v2, Lorg/webrtc/PeerConnection$AdapterType;->bitMask:Ljava/lang/Integer;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/webrtc/PeerConnection$AdapterType;->bitMask:Ljava/lang/Integer;

    return-void
.end method

.method static fromNativeIndex(I)Lorg/webrtc/PeerConnection$AdapterType;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    .line 412
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$AdapterType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$AdapterType;
    .locals 1

    const-class v0, Lorg/webrtc/PeerConnection$AdapterType;

    .line 385
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$AdapterType;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$AdapterType;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$AdapterType;->$VALUES:[Lorg/webrtc/PeerConnection$AdapterType;

    .line 385
    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$AdapterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$AdapterType;

    return-object v0
.end method
