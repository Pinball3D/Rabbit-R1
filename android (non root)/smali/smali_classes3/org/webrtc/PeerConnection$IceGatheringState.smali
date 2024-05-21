.class public final enum Lorg/webrtc/PeerConnection$IceGatheringState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceGatheringState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/PeerConnection$IceGatheringState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$IceGatheringState;

.field public static final enum COMPLETE:Lorg/webrtc/PeerConnection$IceGatheringState;

.field public static final enum GATHERING:Lorg/webrtc/PeerConnection$IceGatheringState;

.field public static final enum NEW:Lorg/webrtc/PeerConnection$IceGatheringState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lorg/webrtc/PeerConnection$IceGatheringState;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$IceGatheringState;->NEW:Lorg/webrtc/PeerConnection$IceGatheringState;

    .line 35
    new-instance v1, Lorg/webrtc/PeerConnection$IceGatheringState;

    const-string v2, "GATHERING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/PeerConnection$IceGatheringState;->GATHERING:Lorg/webrtc/PeerConnection$IceGatheringState;

    .line 36
    new-instance v2, Lorg/webrtc/PeerConnection$IceGatheringState;

    const-string v3, "COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/PeerConnection$IceGatheringState;->COMPLETE:Lorg/webrtc/PeerConnection$IceGatheringState;

    filled-new-array {v0, v1, v2}, [Lorg/webrtc/PeerConnection$IceGatheringState;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnection$IceGatheringState;->$VALUES:[Lorg/webrtc/PeerConnection$IceGatheringState;

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

.method static fromNativeIndex(I)Lorg/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 40
    invoke-static {}, Lorg/webrtc/PeerConnection$IceGatheringState;->values()[Lorg/webrtc/PeerConnection$IceGatheringState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    const-class v0, Lorg/webrtc/PeerConnection$IceGatheringState;

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$IceGatheringState;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$IceGatheringState;->$VALUES:[Lorg/webrtc/PeerConnection$IceGatheringState;

    .line 33
    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$IceGatheringState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$IceGatheringState;

    return-object v0
.end method
