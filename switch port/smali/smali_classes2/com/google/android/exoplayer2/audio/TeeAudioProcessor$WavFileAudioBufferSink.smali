.class public final Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;
.super Ljava/lang/Object;
.source "TeeAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WavFileAudioBufferSink"
.end annotation


# static fields
.field private static final FILE_SIZE_MINUS_44_OFFSET:I = 0x28

.field private static final FILE_SIZE_MINUS_8_OFFSET:I = 0x4

.field private static final HEADER_LENGTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "WaveFileAudioBufferSink"


# instance fields
.field private bytesWritten:I

.field private channelCount:I

.field private counter:I

.field private encoding:I

.field private final outputFileNamePrefix:Ljava/lang/String;

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private sampleRateHz:I

.field private final scratchBuffer:[B

.field private final scratchByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->outputFileNamePrefix:Ljava/lang/String;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    .line 141
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private getNextOutputFileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->outputFileNamePrefix:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->counter:I

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-%04d.wav"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybePrepareFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->getNextOutputFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->writeFileHeader(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/16 v0, 0x2c

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    return-void
.end method

.method private reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/lit8 v2, v2, -0x8

    .line 218
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x4

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 220
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/lit8 v4, v4, -0x2c

    .line 223
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x28

    .line 224
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    .line 225
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WaveFileAudioBufferSink"

    const-string v3, "Error updating file size"

    .line 228
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    .line 232
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 235
    throw v0
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 201
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    .line 205
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->bytesWritten:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFileHeader(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x52494646

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, -0x1

    .line 179
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const v1, 0x57415645

    .line 180
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const v1, 0x666d7420

    .line 181
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    .line 185
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    .line 186
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/WavUtil;->getTypeForPcmEncoding(I)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    int-to-short v2, v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    .line 188
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    .line 189
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    mul-int/2addr v3, v1

    .line 190
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    int-to-short v3, v1

    .line 191
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v1, 0x8

    iget v3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    .line 192
    div-int/2addr v1, v3

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchBuffer:[B

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->scratchByteBuffer:Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Ljava/io/RandomAccessFile;->write([BII)V

    const p0, 0x64617461

    .line 196
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public flush(III)V
    .locals 3

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WaveFileAudioBufferSink"

    const-string v2, "Error resetting"

    .line 149
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->sampleRateHz:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->encoding:I

    return-void
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->maybePrepareFile()V

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;->writeBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WaveFileAudioBufferSink"

    const-string v0, "Error writing data"

    .line 162
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
