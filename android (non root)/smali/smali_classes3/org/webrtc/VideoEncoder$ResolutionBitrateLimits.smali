.class public Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolutionBitrateLimits"
.end annotation


# instance fields
.field public final frameSizePixels:I

.field public final maxBitrateBps:I

.field public final minBitrateBps:I

.field public final minStartBitrateBps:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->frameSizePixels:I

    iput p2, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->minStartBitrateBps:I

    iput p3, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->minBitrateBps:I

    iput p4, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->maxBitrateBps:I

    return-void
.end method


# virtual methods
.method public getFrameSizePixels()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->frameSizePixels:I

    return p0
.end method

.method public getMaxBitrateBps()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->maxBitrateBps:I

    return p0
.end method

.method public getMinBitrateBps()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->minBitrateBps:I

    return p0
.end method

.method public getMinStartBitrateBps()I
    .locals 0

    iget p0, p0, Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;->minStartBitrateBps:I

    return p0
.end method
