.class public interface abstract Landroidx/media3/datasource/HttpDataSource$Factory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 44
    invoke-interface {p0}, Landroidx/media3/datasource/HttpDataSource$Factory;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public abstract createDataSource()Landroidx/media3/datasource/HttpDataSource;
.end method

.method public abstract setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/HttpDataSource$Factory;"
        }
    .end annotation
.end method
