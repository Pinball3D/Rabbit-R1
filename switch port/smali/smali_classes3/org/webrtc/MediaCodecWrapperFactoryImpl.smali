.class Lorg/webrtc/MediaCodecWrapperFactoryImpl;
.super Ljava/lang/Object;
.source "MediaCodecWrapperFactoryImpl.java"

# interfaces
.implements Lorg/webrtc/MediaCodecWrapperFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createByCodecName(Ljava/lang/String;)Lorg/webrtc/MediaCodecWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance p0, Lorg/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/MediaCodecWrapperFactoryImpl$MediaCodecWrapperImpl;-><init>(Landroid/media/MediaCodec;)V

    return-object p0
.end method
