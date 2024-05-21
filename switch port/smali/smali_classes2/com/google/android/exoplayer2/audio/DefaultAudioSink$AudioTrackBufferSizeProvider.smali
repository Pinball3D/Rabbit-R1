.class public interface abstract Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;-><init>()V

    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method


# virtual methods
.method public abstract getBufferSizeInBytes(IIIIIID)I
.end method
