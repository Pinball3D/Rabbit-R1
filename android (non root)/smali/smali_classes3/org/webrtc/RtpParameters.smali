.class public Lorg/webrtc/RtpParameters;
.super Ljava/lang/Object;
.source "RtpParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/RtpParameters$HeaderExtension;,
        Lorg/webrtc/RtpParameters$Rtcp;,
        Lorg/webrtc/RtpParameters$Codec;,
        Lorg/webrtc/RtpParameters$Encoding;,
        Lorg/webrtc/RtpParameters$DegradationPreference;
    }
.end annotation


# instance fields
.field public final codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation
.end field

.field public degradationPreference:Lorg/webrtc/RtpParameters$DegradationPreference;

.field public final encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private final headerExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcp:Lorg/webrtc/RtpParameters$Rtcp;

.field public final transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/webrtc/RtpParameters$DegradationPreference;Lorg/webrtc/RtpParameters$Rtcp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/webrtc/RtpParameters$DegradationPreference;",
            "Lorg/webrtc/RtpParameters$Rtcp;",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$HeaderExtension;",
            ">;",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Encoding;",
            ">;",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Codec;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/RtpParameters;->transactionId:Ljava/lang/String;

    iput-object p2, p0, Lorg/webrtc/RtpParameters;->degradationPreference:Lorg/webrtc/RtpParameters$DegradationPreference;

    iput-object p3, p0, Lorg/webrtc/RtpParameters;->rtcp:Lorg/webrtc/RtpParameters$Rtcp;

    iput-object p4, p0, Lorg/webrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    iput-object p5, p0, Lorg/webrtc/RtpParameters;->encodings:Ljava/util/List;

    iput-object p6, p0, Lorg/webrtc/RtpParameters;->codecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getCodecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->codecs:Ljava/util/List;

    return-object p0
.end method

.method getDegradationPreference()Lorg/webrtc/RtpParameters$DegradationPreference;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->degradationPreference:Lorg/webrtc/RtpParameters$DegradationPreference;

    return-object p0
.end method

.method getEncodings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->encodings:Ljava/util/List;

    return-object p0
.end method

.method public getHeaderExtensions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    return-object p0
.end method

.method public getRtcp()Lorg/webrtc/RtpParameters$Rtcp;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->rtcp:Lorg/webrtc/RtpParameters$Rtcp;

    return-object p0
.end method

.method getTransactionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters;->transactionId:Ljava/lang/String;

    return-object p0
.end method
