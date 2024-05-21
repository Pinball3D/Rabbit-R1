.class public final Landroidx/media3/datasource/ByteArrayDataSink;
.super Ljava/lang/Object;
.source "ByteArrayDataSink.java"

# interfaces
.implements Landroidx/media3/datasource/DataSink;


# instance fields
.field private stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    .line 46
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)V
    .locals 4

    .line 36
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 37
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    goto :goto_1

    .line 39
    :cond_0
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->length:J

    long-to-int p1, v1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    :goto_1
    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    .line 51
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
