.class public interface abstract Lcom/google/android/exoplayer2/source/SampleStream;
.super Ljava/lang/Object;
.source "SampleStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleStream$ReadDataResult;,
        Lcom/google/android/exoplayer2/source/SampleStream$ReadFlags;
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

.method public abstract readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
.end method

.method public abstract skipData(J)I
.end method
