.class public Lorg/webrtc/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lorg/webrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoFrame$TextureBuffer;,
        Lorg/webrtc/VideoFrame$I420Buffer;,
        Lorg/webrtc/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/webrtc/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 151
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    iput p2, p0, Lorg/webrtc/VideoFrame;->rotation:I

    iput-wide p3, p0, Lorg/webrtc/VideoFrame;->timestampNs:J

    return-void

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rotation must be a multiple of 90"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBuffer()Lorg/webrtc/VideoFrame$Buffer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    return-object p0
.end method

.method public getRotatedHeight()I
    .locals 1

    iget v0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    .line 188
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 189
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 191
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result p0

    return p0
.end method

.method public getRotatedWidth()I
    .locals 1

    iget v0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    .line 181
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 182
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 184
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoFrame;->rotation:I

    return p0
.end method

.method public getTimestampNs()J
    .locals 2

    iget-wide v0, p0, Lorg/webrtc/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 202
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public retain()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoFrame;->buffer:Lorg/webrtc/VideoFrame$Buffer;

    .line 196
    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->retain()V

    return-void
.end method
