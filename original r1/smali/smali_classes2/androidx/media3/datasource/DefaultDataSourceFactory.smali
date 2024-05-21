.class public final Landroidx/media3/datasource/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private final listener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 40
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/TransferListener;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/TransferListener;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->listener:Landroidx/media3/datasource/TransferListener;

    iput-object p3, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    .line 64
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/TransferListener;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultDataSourceFactory;->createDataSource()Landroidx/media3/datasource/DefaultDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/DefaultDataSource;
    .locals 3

    .line 99
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 100
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSourceFactory;->listener:Landroidx/media3/datasource/TransferListener;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DefaultDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v0
.end method
