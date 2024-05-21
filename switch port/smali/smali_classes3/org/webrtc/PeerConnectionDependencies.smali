.class public final Lorg/webrtc/PeerConnectionDependencies;
.super Ljava/lang/Object;
.source "PeerConnectionDependencies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/PeerConnectionDependencies$Builder;
    }
.end annotation


# instance fields
.field private final observer:Lorg/webrtc/PeerConnection$Observer;

.field private final sslCertificateVerifier:Lorg/webrtc/SSLCertificateVerifier;


# direct methods
.method private constructor <init>(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/PeerConnectionDependencies;->observer:Lorg/webrtc/PeerConnection$Observer;

    iput-object p2, p0, Lorg/webrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lorg/webrtc/SSLCertificateVerifier;

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;Lorg/webrtc/PeerConnectionDependencies$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/webrtc/PeerConnectionDependencies;-><init>(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;)V

    return-void
.end method

.method public static builder(Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnectionDependencies$Builder;
    .locals 2

    .line 48
    new-instance v0, Lorg/webrtc/PeerConnectionDependencies$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/webrtc/PeerConnectionDependencies$Builder;-><init>(Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/PeerConnectionDependencies$1;)V

    return-object v0
.end method


# virtual methods
.method getObserver()Lorg/webrtc/PeerConnection$Observer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnectionDependencies;->observer:Lorg/webrtc/PeerConnection$Observer;

    return-object p0
.end method

.method getSSLCertificateVerifier()Lorg/webrtc/SSLCertificateVerifier;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lorg/webrtc/SSLCertificateVerifier;

    return-object p0
.end method
