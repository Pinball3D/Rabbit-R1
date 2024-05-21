.class public interface abstract Lcom/google/android/exoplayer2/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;,
        Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
    }
.end annotation


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
.end method

.method public abstract isSeekable()Z
.end method
