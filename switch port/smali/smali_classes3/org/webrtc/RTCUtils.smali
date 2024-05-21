.class public Lorg/webrtc/RTCUtils;
.super Ljava/lang/Object;
.source "RTCUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMediaStreamTrack(J)Lorg/webrtc/MediaStreamTrack;
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lorg/webrtc/MediaStreamTrack;->createMediaStreamTrack(J)Lorg/webrtc/MediaStreamTrack;

    move-result-object p0

    return-object p0
.end method

.method public static genRtpEncodingParameters(Ljava/lang/String;ZDILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Z)Lorg/webrtc/RtpParameters$Encoding;
    .locals 14

    .line 43
    new-instance v13, Lorg/webrtc/RtpParameters$Encoding;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/webrtc/RtpParameters$Encoding;-><init>(Ljava/lang/String;ZDILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Z)V

    return-object v13
.end method

.method public static getNativeMediaStreamTrack(Lorg/webrtc/MediaStreamTrack;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/webrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getNativeRtpReceiver(Lorg/webrtc/RtpReceiver;)J
    .locals 2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "nativeRtpReceiver"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public static getNativeRtpSender(Lorg/webrtc/RtpSender;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lorg/webrtc/RtpSender;->getNativeRtpSender()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
