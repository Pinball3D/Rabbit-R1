.class public final enum Lorg/webrtc/PeerConnection$SignalingState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/PeerConnection$SignalingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum CLOSED:Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_OFFER:Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_PRANSWER:Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_OFFER:Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_PRANSWER:Lorg/webrtc/PeerConnection$SignalingState;

.field public static final enum STABLE:Lorg/webrtc/PeerConnection$SignalingState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v0, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$SignalingState;->STABLE:Lorg/webrtc/PeerConnection$SignalingState;

    .line 84
    new-instance v1, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v2, "HAVE_LOCAL_OFFER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_OFFER:Lorg/webrtc/PeerConnection$SignalingState;

    .line 85
    new-instance v2, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v3, "HAVE_LOCAL_PRANSWER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_PRANSWER:Lorg/webrtc/PeerConnection$SignalingState;

    .line 86
    new-instance v3, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v4, "HAVE_REMOTE_OFFER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_OFFER:Lorg/webrtc/PeerConnection$SignalingState;

    .line 87
    new-instance v4, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v5, "HAVE_REMOTE_PRANSWER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_PRANSWER:Lorg/webrtc/PeerConnection$SignalingState;

    .line 88
    new-instance v5, Lorg/webrtc/PeerConnection$SignalingState;

    const-string v6, "CLOSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/webrtc/PeerConnection$SignalingState;->CLOSED:Lorg/webrtc/PeerConnection$SignalingState;

    filled-new-array/range {v0 .. v5}, [Lorg/webrtc/PeerConnection$SignalingState;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnection$SignalingState;->$VALUES:[Lorg/webrtc/PeerConnection$SignalingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lorg/webrtc/PeerConnection$SignalingState;
    .locals 1

    .line 92
    invoke-static {}, Lorg/webrtc/PeerConnection$SignalingState;->values()[Lorg/webrtc/PeerConnection$SignalingState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$SignalingState;
    .locals 1

    const-class v0, Lorg/webrtc/PeerConnection$SignalingState;

    .line 82
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$SignalingState;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$SignalingState;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$SignalingState;->$VALUES:[Lorg/webrtc/PeerConnection$SignalingState;

    .line 82
    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$SignalingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$SignalingState;

    return-object v0
.end method
