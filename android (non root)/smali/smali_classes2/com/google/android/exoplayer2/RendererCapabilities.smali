.class public interface abstract Lcom/google/android/exoplayer2/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/RendererCapabilities$Capabilities;,
        Lcom/google/android/exoplayer2/RendererCapabilities$DecoderSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$HardwareAccelerationSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$TunnelingSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$AdaptiveSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$FormatSupport;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_NOT_SEAMLESS:I = 0x8

.field public static final ADAPTIVE_NOT_SUPPORTED:I = 0x0

.field public static final ADAPTIVE_SEAMLESS:I = 0x10

.field public static final ADAPTIVE_SUPPORT_MASK:I = 0x18

.field public static final DECODER_SUPPORT_FALLBACK:I = 0x0

.field public static final DECODER_SUPPORT_FALLBACK_MIMETYPE:I = 0x100

.field public static final DECODER_SUPPORT_PRIMARY:I = 0x80

.field public static final FORMAT_EXCEEDS_CAPABILITIES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_HANDLED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_SUPPORT_MASK:I = 0x7

.field public static final FORMAT_UNSUPPORTED_DRM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_UNSUPPORTED_SUBTYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_UNSUPPORTED_TYPE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HARDWARE_ACCELERATION_NOT_SUPPORTED:I = 0x0

.field public static final HARDWARE_ACCELERATION_SUPPORTED:I = 0x40

.field public static final HARDWARE_ACCELERATION_SUPPORT_MASK:I = 0x40

.field public static final MODE_SUPPORT_MASK:I = 0x180

.field public static final TUNNELING_NOT_SUPPORTED:I = 0x0

.field public static final TUNNELING_SUPPORTED:I = 0x20

.field public static final TUNNELING_SUPPORT_MASK:I = 0x20


# direct methods
.method public static create(I)I
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/RendererCapabilities;->create(III)I

    move-result p0

    return p0
.end method

.method public static create(III)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 224
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->create(IIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIII)I
    .locals 0

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/2addr p0, p3

    or-int/2addr p0, p4

    return p0
.end method

.method public static getAdaptiveSupport(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static getDecoderSupport(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x180

    return p0
.end method

.method public static getFormatSupport(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public static getTunnelingSupport(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x20

    return p0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
