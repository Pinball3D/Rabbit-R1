.class public abstract Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.super Ljava/lang/Object;
.source "SimpleMetadataDecoder.java"

# interfaces
.implements Landroidx/media3/extractor/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;
    .locals 2

    .line 34
    iget-object v0, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 37
    invoke-virtual {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected abstract decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
.end method
