.class public final Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;
.super Ljava/lang/Object;
.source "MediaParserUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil$Api31;
    }
.end annotation


# static fields
.field public static final PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE:Ljava/lang/String; = "android.media.mediaparser.eagerlyExposeTrackType"

.field public static final PARAMETER_EXPOSE_CAPTION_FORMATS:Ljava/lang/String; = "android.media.mediaParser.exposeCaptionFormats"

.field public static final PARAMETER_EXPOSE_CHUNK_INDEX_AS_MEDIA_FORMAT:Ljava/lang/String; = "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

.field public static final PARAMETER_EXPOSE_DUMMY_SEEK_MAP:Ljava/lang/String; = "android.media.mediaparser.exposeDummySeekMap"

.field public static final PARAMETER_IGNORE_TIMESTAMP_OFFSET:Ljava/lang/String; = "android.media.mediaparser.ignoreTimestampOffset"

.field public static final PARAMETER_INCLUDE_SUPPLEMENTAL_DATA:Ljava/lang/String; = "android.media.mediaparser.includeSupplementalData"

.field public static final PARAMETER_IN_BAND_CRYPTO_INFO:Ljava/lang/String; = "android.media.mediaparser.inBandCryptoInfo"

.field public static final PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS:Ljava/lang/String; = "android.media.mediaParser.overrideInBandCaptionDeclarations"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil$Api31;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public static toCaptionsMediaFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;
    .locals 3

    .line 59
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 60
    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "caption-service-number"

    .line 62
    iget p0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method
