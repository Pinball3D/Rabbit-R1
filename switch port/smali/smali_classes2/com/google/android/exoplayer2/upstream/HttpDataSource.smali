.class public interface abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text"

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text/vtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "html"

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract clearAllRequestProperties()V
.end method

.method public abstract clearRequestProperty(Ljava/lang/String;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method
