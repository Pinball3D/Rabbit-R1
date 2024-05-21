.class public interface abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    .line 44
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public abstract createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end method

.method public abstract setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;"
        }
    .end annotation
.end method
