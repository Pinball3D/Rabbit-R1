.class Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/FileVideoCapturer$VideoReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoReaderY4M"
.end annotation


# static fields
.field private static final FRAME_DELIMETER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "VideoReaderY4M"

.field private static final Y4M_FRAME_DELIMETER:Ljava/lang/String; = "FRAME"


# instance fields
.field private final frameHeight:I

.field private final frameWidth:I

.field private final mediaFile:Ljava/io/RandomAccessFile;

.field private final mediaFileChannel:Ljava/nio/channels/FileChannel;

.field private final videoStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFile:Ljava/io/RandomAccessFile;

    .line 48
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFile:Ljava/io/RandomAccessFile;

    .line 51
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    iget-object p1, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 62
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->videoStart:J

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ ]"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v3, v0, :cond_3

    aget-object v7, p1, v3

    .line 69
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x43

    if-eq v8, v9, :cond_2

    const/16 v9, 0x48

    if-eq v8, v9, :cond_1

    const/16 v9, 0x57

    if-eq v8, v9, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Color space: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoReaderY4M"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "420"

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "420mpeg2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 84
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Does not support any other color space than I420 or I420mpeg2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_5
    :goto_3
    rem-int/lit8 p1, v4, 0x2

    if-eq p1, v6, :cond_6

    rem-int/lit8 p1, v5, 0x2

    if-eq p1, v6, :cond_6

    iput v4, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameWidth:I

    iput v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "frame dim: ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Does not support odd width or height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    int-to-char v1, v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 54
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found end of file before end of header for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFile:Ljava/io/RandomAccessFile;

    .line 137
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VideoReaderY4M"

    const-string v1, "Problem closing file"

    .line 139
    invoke-static {v0, v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getNextFrame()Lorg/webrtc/VideoFrame;
    .locals 12

    const-string v0, "Frames should be delimited by FRAME plus newline, found delimter was: \'"

    .line 97
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iget v3, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameWidth:I

    iget v4, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    .line 98
    invoke-static {v3, v4}, Lorg/webrtc/JavaI420Buffer;->allocate(II)Lorg/webrtc/JavaI420Buffer;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 100
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 101
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v6

    iget v7, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    add-int/lit8 v7, v7, 0x1

    .line 102
    div-int/lit8 v7, v7, 0x2

    .line 103
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getStrideY()I

    .line 104
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getStrideU()I

    .line 105
    invoke-virtual {v3}, Lorg/webrtc/JavaI420Buffer;->getStrideV()I

    :try_start_0
    sget v7, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->FRAME_DELIMETER_LENGTH:I

    .line 108
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 109
    invoke-virtual {v9, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-ge v9, v7, :cond_1

    iget-object v9, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v10, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->videoStart:J

    .line 111
    invoke-virtual {v9, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v9, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 112
    invoke-virtual {v9, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-lt v9, v7, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error looping video"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v8, "FRAME\n"

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 123
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 124
    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object p0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileChannel:Ljava/nio/channels/FileChannel;

    .line 125
    invoke-virtual {p0, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    new-instance p0, Lorg/webrtc/VideoFrame;

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    return-object p0

    .line 118
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
