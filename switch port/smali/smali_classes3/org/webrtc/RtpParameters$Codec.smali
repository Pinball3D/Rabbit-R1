.class public Lorg/webrtc/RtpParameters$Codec;
.super Ljava/lang/Object;
.source "RtpParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RtpParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Codec"
.end annotation


# instance fields
.field public clockRate:Ljava/lang/Integer;

.field kind:Lorg/webrtc/MediaStreamTrack$MediaType;

.field public name:Ljava/lang/String;

.field public numChannels:Ljava/lang/Integer;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payloadType:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/webrtc/MediaStreamTrack$MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/webrtc/MediaStreamTrack$MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/RtpParameters$Codec;->payloadType:I

    iput-object p2, p0, Lorg/webrtc/RtpParameters$Codec;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/webrtc/RtpParameters$Codec;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    iput-object p4, p0, Lorg/webrtc/RtpParameters$Codec;->clockRate:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/webrtc/RtpParameters$Codec;->numChannels:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/webrtc/RtpParameters$Codec;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getClockRate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters$Codec;->clockRate:Ljava/lang/Integer;

    return-object p0
.end method

.method getKind()Lorg/webrtc/MediaStreamTrack$MediaType;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters$Codec;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    return-object p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters$Codec;->name:Ljava/lang/String;

    return-object p0
.end method

.method getNumChannels()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters$Codec;->numChannels:Ljava/lang/Integer;

    return-object p0
.end method

.method getParameters()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/RtpParameters$Codec;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method getPayloadType()I
    .locals 0

    iget p0, p0, Lorg/webrtc/RtpParameters$Codec;->payloadType:I

    return p0
.end method
