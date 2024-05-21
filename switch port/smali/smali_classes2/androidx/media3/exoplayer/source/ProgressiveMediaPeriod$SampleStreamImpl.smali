.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 925
    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 935
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isReady(I)Z

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

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 940
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 946
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->readData(ILandroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 951
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result p0

    return p0
.end method
