.class public final Landroidx/media3/datasource/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultDataSource$Factory;->createDataSource()Landroidx/media3/datasource/DefaultDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/DefaultDataSource;
    .locals 3

    .line 113
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 114
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DefaultDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public setTransferListener(Landroidx/media3/datasource/TransferListener;)Landroidx/media3/datasource/DefaultDataSource$Factory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    return-object p0
.end method
