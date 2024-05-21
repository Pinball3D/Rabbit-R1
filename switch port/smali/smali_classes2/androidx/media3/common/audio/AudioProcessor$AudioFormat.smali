.class public final Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFormat"
.end annotation


# static fields
.field public static final NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;


# instance fields
.field public final bytesPerFrame:I

.field public final channelCount:I

.field public final encoding:I

.field public final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    sput-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iput p2, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iput p3, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 67
    invoke-static {p3}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {p3, p2}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 92
    :cond_1
    check-cast p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 93
    iget v3, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v3, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFormat[sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
