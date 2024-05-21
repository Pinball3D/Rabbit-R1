.class public final enum Lorg/webrtc/PeerConnection$IceTransportsType;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceTransportsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/PeerConnection$IceTransportsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$IceTransportsType;

.field public static final enum ALL:Lorg/webrtc/PeerConnection$IceTransportsType;

.field public static final enum NOHOST:Lorg/webrtc/PeerConnection$IceTransportsType;

.field public static final enum NONE:Lorg/webrtc/PeerConnection$IceTransportsType;

.field public static final enum RELAY:Lorg/webrtc/PeerConnection$IceTransportsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 370
    new-instance v0, Lorg/webrtc/PeerConnection$IceTransportsType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$IceTransportsType;->NONE:Lorg/webrtc/PeerConnection$IceTransportsType;

    new-instance v1, Lorg/webrtc/PeerConnection$IceTransportsType;

    const-string v2, "RELAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/PeerConnection$IceTransportsType;->RELAY:Lorg/webrtc/PeerConnection$IceTransportsType;

    new-instance v2, Lorg/webrtc/PeerConnection$IceTransportsType;

    const-string v3, "NOHOST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/PeerConnection$IceTransportsType;->NOHOST:Lorg/webrtc/PeerConnection$IceTransportsType;

    new-instance v3, Lorg/webrtc/PeerConnection$IceTransportsType;

    const-string v4, "ALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/webrtc/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/webrtc/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/PeerConnection$IceTransportsType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/webrtc/PeerConnection$IceTransportsType;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnection$IceTransportsType;->$VALUES:[Lorg/webrtc/PeerConnection$IceTransportsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceTransportsType;
    .locals 1

    const-class v0, Lorg/webrtc/PeerConnection$IceTransportsType;

    .line 370
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$IceTransportsType;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$IceTransportsType;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$IceTransportsType;->$VALUES:[Lorg/webrtc/PeerConnection$IceTransportsType;

    .line 370
    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$IceTransportsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$IceTransportsType;

    return-object v0
.end method
