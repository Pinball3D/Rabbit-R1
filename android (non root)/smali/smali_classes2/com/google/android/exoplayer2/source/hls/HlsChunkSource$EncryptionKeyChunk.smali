.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lcom/google/android/exoplayer2/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field private result:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V
    .locals 8

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 939
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 0

    .line 951
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object p0
.end method
