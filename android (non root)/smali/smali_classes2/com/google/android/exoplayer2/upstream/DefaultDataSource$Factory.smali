.class public final Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
    .locals 3

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 111
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-object p0
.end method
