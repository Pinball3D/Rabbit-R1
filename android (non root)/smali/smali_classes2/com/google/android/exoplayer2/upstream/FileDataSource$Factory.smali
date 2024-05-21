.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private listener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/FileDataSource;
    .locals 1

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public setListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-object p0
.end method
