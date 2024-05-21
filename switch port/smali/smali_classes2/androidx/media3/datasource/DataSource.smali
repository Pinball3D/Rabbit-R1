.class public interface abstract Landroidx/media3/datasource/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Landroidx/media3/common/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0
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

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Landroidx/media3/datasource/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
