.class public interface abstract Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;
.super Ljava/lang/Object;
.source "TeeAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioBufferSink"
.end annotation


# virtual methods
.method public abstract flush(III)V
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;)V
.end method
