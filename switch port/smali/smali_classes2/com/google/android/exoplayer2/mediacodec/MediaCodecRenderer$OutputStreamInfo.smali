.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamInfo"
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;


# instance fields
.field public final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final previousStreamLastBufferTimeUs:J

.field public final startPositionUs:J

.field public final streamOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2495
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    sput-object v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 2507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->startPositionUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 2511
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    return-void
.end method
