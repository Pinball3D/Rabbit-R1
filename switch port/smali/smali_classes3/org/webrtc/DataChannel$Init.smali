.class public Lorg/webrtc/DataChannel$Init;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Init"
.end annotation


# instance fields
.field public id:I

.field public maxRetransmitTimeMs:I

.field public maxRetransmits:I

.field public negotiated:Z

.field public ordered:Z

.field public protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/DataChannel$Init;->ordered:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/webrtc/DataChannel$Init;->maxRetransmitTimeMs:I

    iput v0, p0, Lorg/webrtc/DataChannel$Init;->maxRetransmits:I

    const-string v1, ""

    iput-object v1, p0, Lorg/webrtc/DataChannel$Init;->protocol:Ljava/lang/String;

    iput v0, p0, Lorg/webrtc/DataChannel$Init;->id:I

    return-void
.end method


# virtual methods
.method getId()I
    .locals 0

    iget p0, p0, Lorg/webrtc/DataChannel$Init;->id:I

    return p0
.end method

.method getMaxRetransmitTimeMs()I
    .locals 0

    iget p0, p0, Lorg/webrtc/DataChannel$Init;->maxRetransmitTimeMs:I

    return p0
.end method

.method getMaxRetransmits()I
    .locals 0

    iget p0, p0, Lorg/webrtc/DataChannel$Init;->maxRetransmits:I

    return p0
.end method

.method getNegotiated()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/DataChannel$Init;->negotiated:Z

    return p0
.end method

.method getOrdered()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/DataChannel$Init;->ordered:Z

    return p0
.end method

.method getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/DataChannel$Init;->protocol:Ljava/lang/String;

    return-object p0
.end method
