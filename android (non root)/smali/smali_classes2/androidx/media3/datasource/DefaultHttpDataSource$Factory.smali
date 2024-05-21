.class public final Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private transferListener:Landroidx/media3/datasource/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->createDataSource()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/DefaultHttpDataSource;
    .locals 10

    .line 205
    new-instance v9, Landroidx/media3/datasource/DefaultHttpDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iget v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    iget-object v6, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    iget-boolean v7, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLandroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLandroidx/media3/datasource/DefaultHttpDataSource$1;)V

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {v9, p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v9
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->createDataSource()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object p0

    return-object p0
.end method

.method public setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    return-object p0
.end method

.method public setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    return-object p0
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    return-object p0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 90
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setKeepPostFor302Redirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    return-object p0
.end method

.method public setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-object p0
.end method

.method public setTransferListener(Landroidx/media3/datasource/TransferListener;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method
