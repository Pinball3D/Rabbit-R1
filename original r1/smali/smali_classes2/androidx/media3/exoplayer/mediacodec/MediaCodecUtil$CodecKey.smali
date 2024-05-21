.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iput-boolean p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1178
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 1179
    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method
