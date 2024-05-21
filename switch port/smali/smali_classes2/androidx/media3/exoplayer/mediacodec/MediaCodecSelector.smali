.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
