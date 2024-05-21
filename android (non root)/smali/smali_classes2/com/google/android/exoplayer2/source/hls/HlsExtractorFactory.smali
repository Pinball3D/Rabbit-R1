.class public interface abstract Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
