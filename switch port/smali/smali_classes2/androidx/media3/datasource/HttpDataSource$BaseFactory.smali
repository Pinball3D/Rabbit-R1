.class public abstract Landroidx/media3/datasource/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public final createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 157
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->createDataSourceInternal(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/HttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method protected abstract createDataSourceInternal(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/HttpDataSource;
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 1
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

    iget-object v0, p0, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 163
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method
