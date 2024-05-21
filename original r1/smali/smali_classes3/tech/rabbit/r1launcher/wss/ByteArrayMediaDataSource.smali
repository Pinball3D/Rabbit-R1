.class public Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "ByteArrayMediaDataSource.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;->data:[B

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

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;->data:[B

    .line 30
    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/ByteArrayMediaDataSource;->data:[B

    .line 18
    array-length v0, p0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v0, p5

    add-long v2, p1, v0

    .line 21
    array-length v4, p0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 22
    array-length p5, p0

    int-to-long v4, p5

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p5, v0

    :cond_1
    long-to-int p1, p1

    .line 24
    invoke-static {p0, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method
