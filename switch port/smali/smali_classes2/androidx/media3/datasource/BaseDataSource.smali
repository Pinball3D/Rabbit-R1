.class public abstract Landroidx/media3/datasource/BaseDataSource;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private final isNetwork:Z

.field private listenerCount:I

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/datasource/TransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    .line 54
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    :cond_0
    return-void
.end method

.method protected final bytesTransferred(I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 91
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSpec;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/TransferListener;

    iget-boolean v3, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    .line 95
    invoke-interface {v2, p0, v0, v3, p1}, Landroidx/media3/datasource/TransferListener;->onBytesTransferred(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final transferEnded()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 101
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSpec;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/TransferListener;

    iget-boolean v3, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    invoke-interface {v2, p0, v0, v3}, Landroidx/media3/datasource/TransferListener;->onTransferEnd(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method

.method protected final transferInitializing(Landroidx/media3/datasource/DataSpec;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/TransferListener;

    iget-boolean v2, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/datasource/TransferListener;->onTransferInitializing(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final transferStarted(Landroidx/media3/datasource/DataSpec;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/TransferListener;

    iget-boolean v2, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/datasource/TransferListener;->onTransferStart(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
