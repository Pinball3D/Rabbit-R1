.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;
.super Ljava/lang/Object;
.source "ChunkHolder.java"


# instance fields
.field public chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field public endOfStream:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    return-void
.end method
