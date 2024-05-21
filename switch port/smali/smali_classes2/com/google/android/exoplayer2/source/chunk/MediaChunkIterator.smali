.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
.super Ljava/lang/Object;
.source "MediaChunkIterator.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    return-void
.end method


# virtual methods
.method public abstract getChunkEndTimeUs()J
.end method

.method public abstract getChunkStartTimeUs()J
.end method

.method public abstract getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
.end method

.method public abstract isEnded()Z
.end method

.method public abstract next()Z
.end method

.method public abstract reset()V
.end method
