.class public interface abstract Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onPlaylistRefreshRequired(Landroid/net/Uri;)V
.end method

.method public abstract onPrepared()V
.end method
