.class final enum Lorg/webrtc/VideoCodecMimeType;
.super Ljava/lang/Enum;
.source "VideoCodecMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/VideoCodecMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/VideoCodecMimeType;

.field public static final enum AV1:Lorg/webrtc/VideoCodecMimeType;

.field public static final enum H264:Lorg/webrtc/VideoCodecMimeType;

.field public static final enum VP8:Lorg/webrtc/VideoCodecMimeType;

.field public static final enum VP9:Lorg/webrtc/VideoCodecMimeType;


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lorg/webrtc/VideoCodecMimeType;

    const/4 v1, 0x0

    const-string v2, "video/x-vnd.on2.vp8"

    const-string v3, "VP8"

    invoke-direct {v0, v3, v1, v2}, Lorg/webrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    .line 16
    new-instance v1, Lorg/webrtc/VideoCodecMimeType;

    const/4 v2, 0x1

    const-string v3, "video/x-vnd.on2.vp9"

    const-string v4, "VP9"

    invoke-direct {v1, v4, v2, v3}, Lorg/webrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/webrtc/VideoCodecMimeType;->VP9:Lorg/webrtc/VideoCodecMimeType;

    .line 17
    new-instance v2, Lorg/webrtc/VideoCodecMimeType;

    const/4 v3, 0x2

    const-string v4, "video/avc"

    const-string v5, "H264"

    invoke-direct {v2, v5, v3, v4}, Lorg/webrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    .line 18
    new-instance v3, Lorg/webrtc/VideoCodecMimeType;

    const/4 v4, 0x3

    const-string v5, "video/av01"

    const-string v6, "AV1"

    invoke-direct {v3, v6, v4, v5}, Lorg/webrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/webrtc/VideoCodecMimeType;->AV1:Lorg/webrtc/VideoCodecMimeType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/webrtc/VideoCodecMimeType;

    move-result-object v0

    sput-object v0, Lorg/webrtc/VideoCodecMimeType;->$VALUES:[Lorg/webrtc/VideoCodecMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/webrtc/VideoCodecMimeType;->mimeType:Ljava/lang/String;

    return-void
.end method

.method static fromSdpCodecName(Ljava/lang/String;)Lorg/webrtc/VideoCodecMimeType;
    .locals 1

    const-string v0, "AV1X"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/webrtc/VideoCodecMimeType;->AV1:Lorg/webrtc/VideoCodecMimeType;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/webrtc/VideoCodecMimeType;->valueOf(Ljava/lang/String;)Lorg/webrtc/VideoCodecMimeType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/VideoCodecMimeType;
    .locals 1

    const-class v0, Lorg/webrtc/VideoCodecMimeType;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/VideoCodecMimeType;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/VideoCodecMimeType;
    .locals 1

    sget-object v0, Lorg/webrtc/VideoCodecMimeType;->$VALUES:[Lorg/webrtc/VideoCodecMimeType;

    .line 14
    invoke-virtual {v0}, [Lorg/webrtc/VideoCodecMimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/VideoCodecMimeType;

    return-object v0
.end method


# virtual methods
.method mimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoCodecMimeType;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method toSdpCodecName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/webrtc/VideoCodecMimeType;->AV1:Lorg/webrtc/VideoCodecMimeType;

    if-ne p0, v0, :cond_0

    const-string p0, "AV1X"

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/VideoCodecMimeType;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
