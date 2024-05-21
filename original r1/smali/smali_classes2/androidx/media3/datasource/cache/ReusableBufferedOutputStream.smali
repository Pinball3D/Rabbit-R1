.class final Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 53
    :goto_0
    :try_start_1
    iget-object p0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 60
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    .line 72
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 73
    iput-object p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->count:I

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    return-void
.end method
