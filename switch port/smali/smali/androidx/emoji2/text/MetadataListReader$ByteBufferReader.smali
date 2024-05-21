.class Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferReader"
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 316
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public readTag()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 331
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public readUnsignedInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedShort(S)I

    move-result p0

    return p0
.end method

.method public skip(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
