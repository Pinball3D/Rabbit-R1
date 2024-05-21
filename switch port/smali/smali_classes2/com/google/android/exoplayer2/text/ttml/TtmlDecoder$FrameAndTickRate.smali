.class final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
.super Ljava/lang/Object;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameAndTickRate"
.end annotation


# instance fields
.field final effectiveFrameRate:F

.field final subFrameRate:I

.field final tickRate:I


# direct methods
.method constructor <init>(FII)V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    return-void
.end method
