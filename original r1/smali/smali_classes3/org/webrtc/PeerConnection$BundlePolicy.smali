.class public final enum Lorg/webrtc/PeerConnection$BundlePolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundlePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/PeerConnection$BundlePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/PeerConnection$BundlePolicy;

.field public static final enum BALANCED:Lorg/webrtc/PeerConnection$BundlePolicy;

.field public static final enum MAXBUNDLE:Lorg/webrtc/PeerConnection$BundlePolicy;

.field public static final enum MAXCOMPAT:Lorg/webrtc/PeerConnection$BundlePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 373
    new-instance v0, Lorg/webrtc/PeerConnection$BundlePolicy;

    const-string v1, "BALANCED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/PeerConnection$BundlePolicy;

    new-instance v1, Lorg/webrtc/PeerConnection$BundlePolicy;

    const-string v2, "MAXBUNDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/PeerConnection$BundlePolicy;->MAXBUNDLE:Lorg/webrtc/PeerConnection$BundlePolicy;

    new-instance v2, Lorg/webrtc/PeerConnection$BundlePolicy;

    const-string v3, "MAXCOMPAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/PeerConnection$BundlePolicy;->MAXCOMPAT:Lorg/webrtc/PeerConnection$BundlePolicy;

    filled-new-array {v0, v1, v2}, [Lorg/webrtc/PeerConnection$BundlePolicy;

    move-result-object v0

    sput-object v0, Lorg/webrtc/PeerConnection$BundlePolicy;->$VALUES:[Lorg/webrtc/PeerConnection$BundlePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/PeerConnection$BundlePolicy;
    .locals 1

    const-class v0, Lorg/webrtc/PeerConnection$BundlePolicy;

    .line 373
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/PeerConnection$BundlePolicy;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/PeerConnection$BundlePolicy;
    .locals 1

    sget-object v0, Lorg/webrtc/PeerConnection$BundlePolicy;->$VALUES:[Lorg/webrtc/PeerConnection$BundlePolicy;

    .line 373
    invoke-virtual {v0}, [Lorg/webrtc/PeerConnection$BundlePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/PeerConnection$BundlePolicy;

    return-object v0
.end method
