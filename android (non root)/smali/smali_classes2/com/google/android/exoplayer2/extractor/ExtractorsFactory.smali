.class public interface abstract Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object v0
.end method


# virtual methods
.method public abstract createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
