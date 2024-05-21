.class public final Landroidx/media3/exoplayer/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 0

    const/4 p0, 0x4

    .line 40
    invoke-virtual {p2, p0}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p0, -0x4

    return p0
.end method

.method public skipData(J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
