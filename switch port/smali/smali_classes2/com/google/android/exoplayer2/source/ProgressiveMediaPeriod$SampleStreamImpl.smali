.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 924
    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 934
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 939
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 945
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 950
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result p0

    return p0
.end method
