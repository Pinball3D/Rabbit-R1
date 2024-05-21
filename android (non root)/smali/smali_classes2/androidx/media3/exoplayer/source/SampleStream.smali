.class public interface abstract Landroidx/media3/exoplayer/source/SampleStream;
.super Ljava/lang/Object;
.source "SampleStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleStream$ReadDataResult;,
        Landroidx/media3/exoplayer/source/SampleStream$ReadFlags;
    }
.end annotation


# static fields
.field public static final FLAG_OMIT_SAMPLE_DATA:I = 0x4

.field public static final FLAG_PEEK:I = 0x1

.field public static final FLAG_REQUIRE_FORMAT:I = 0x2


# virtual methods
.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
.end method

.method public abstract skipData(J)I
.end method
