.class Lorg/webrtc/HardwareVideoDecoderFactory$1;
.super Ljava/lang/Object;
.source "HardwareVideoDecoderFactory.java"

# interfaces
.implements Lorg/webrtc/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/HardwareVideoDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/webrtc/Predicate<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 23
    invoke-static {p1}, Lorg/webrtc/MediaCodecUtils;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Landroid/media/MediaCodecInfo;

    invoke-virtual {p0, p1}, Lorg/webrtc/HardwareVideoDecoderFactory$1;->test(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method
