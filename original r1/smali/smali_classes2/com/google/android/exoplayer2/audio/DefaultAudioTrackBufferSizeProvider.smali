.class public Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    }
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final MAX_PCM_BUFFER_DURATION_US:I = 0xb71b0

.field private static final MIN_PCM_BUFFER_DURATION_US:I = 0x3d090

.field private static final OFFLOAD_BUFFER_DURATION_US:I = 0x2faf080

.field private static final PASSTHROUGH_BUFFER_DURATION_US:I = 0x3d090

.field private static final PCM_BUFFER_MULTIPLICATION_FACTOR:I = 0x4


# instance fields
.field public final ac3BufferMultiplicationFactor:I

.field protected final maxPcmBufferDurationUs:I

.field protected final minPcmBufferDurationUs:I

.field protected final offloadBufferDurationUs:I

.field protected final passthroughBufferDurationUs:I

.field protected final pcmBufferMultiplicationFactor:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$000(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    .line 157
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    .line 158
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    .line 159
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    .line 160
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    .line 161
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    return-void
.end method

.method protected static durationUsToBytes(III)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    int-to-long p0, p2

    mul-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    .line 232
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    return p0
.end method

.method protected static getMaximumEncodedRateBytesPerSecond(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 274
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const p0, 0xf906

    return p0

    :pswitch_2
    const p0, 0x52080

    return p0

    :pswitch_3
    const p0, 0x3e800

    return p0

    :pswitch_4
    const/16 p0, 0x1f40

    return p0

    :pswitch_5
    const p0, 0x2ebae4

    return p0

    :pswitch_6
    const/16 p0, 0x1b58

    return p0

    :pswitch_7
    const/16 p0, 0x3e80

    return p0

    :pswitch_8
    const p0, 0x186a0

    return p0

    :pswitch_9
    const p0, 0x9c40

    return p0

    :pswitch_a
    const p0, 0x225510

    return p0

    :pswitch_b
    const p0, 0x2ee00

    return p0

    :pswitch_c
    const p0, 0xbb800

    return p0

    :pswitch_d
    const p0, 0x13880

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected get1xBufferSizeInBytes(IIIIII)I
    .locals 0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 196
    invoke-virtual {p0, p2, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getPassthroughBufferSizeInBytes(II)I

    move-result p0

    return p0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 198
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getOffloadBufferSizeInBytes(I)I

    move-result p0

    return p0

    .line 194
    :cond_2
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getPcmBufferSizeInBytes(III)I

    move-result p0

    return p0
.end method

.method public getBufferSizeInBytes(IIIIIID)I
    .locals 0

    .line 174
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->get1xBufferSizeInBytes(IIIIII)I

    move-result p0

    int-to-double p2, p0

    mul-double/2addr p2, p7

    double-to-int p0, p2

    .line 179
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x1

    .line 181
    div-int/2addr p0, p4

    mul-int/2addr p0, p4

    return p0
.end method

.method protected getOffloadBufferSizeInBytes(I)I
    .locals 2

    .line 227
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p1

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    .line 228
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    return p0
.end method

.method protected getPassthroughBufferSizeInBytes(II)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    mul-int/2addr v0, p0

    :cond_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x8

    .line 220
    sget-object p1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, p0, p1}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p0

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p0

    :goto_0
    int-to-long p1, v0

    int-to-long v0, p0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    .line 222
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    return p0
.end method

.method protected getPcmBufferSizeInBytes(III)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    .line 207
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result v0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    .line 208
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result p0

    .line 209
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p0

    return p0
.end method
