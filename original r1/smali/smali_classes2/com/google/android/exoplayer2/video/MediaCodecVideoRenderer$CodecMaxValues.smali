.class public final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    iput p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method
