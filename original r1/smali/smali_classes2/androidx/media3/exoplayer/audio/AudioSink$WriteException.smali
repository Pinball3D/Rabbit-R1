.class public final Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteException"
.end annotation


# instance fields
.field public final errorCode:I

.field public final format:Landroidx/media3/common/Format;

.field public final isRecoverable:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;Z)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioTrack write failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/Format;

    return-void
.end method
