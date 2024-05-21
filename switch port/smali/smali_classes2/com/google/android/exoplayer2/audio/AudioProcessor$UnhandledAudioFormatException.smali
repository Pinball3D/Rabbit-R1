.class public final Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
.super Ljava/lang/Exception;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnhandledAudioFormatException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
