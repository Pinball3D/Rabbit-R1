.class public interface abstract Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;-><init>()V

    .line 198
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method


# virtual methods
.method public abstract getBufferSizeInBytes(IIIIIID)I
.end method
