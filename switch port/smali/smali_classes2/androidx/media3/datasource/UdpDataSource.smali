.class public final Landroidx/media3/datasource/UdpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0

.field public static final DEFAULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final UDP_PORT_UNSET:I = -0x1


# instance fields
.field private address:Ljava/net/InetAddress;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7d0

    .line 74
    invoke-direct {p0, v0}, Landroidx/media3/datasource/UdpDataSource;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x1f40

    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/UdpDataSource;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    iput p2, p0, Landroidx/media3/datasource/UdpDataSource;->socketTimeoutMillis:I

    .line 96
    new-array p2, p1, [B

    iput-object p2, p0, Landroidx/media3/datasource/UdpDataSource;->packetBuffer:[B

    .line 97
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 168
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    iget-boolean v1, p0, Landroidx/media3/datasource/UdpDataSource;->opened:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/media3/datasource/UdpDataSource;->opened:Z

    .line 182
    invoke-virtual {p0}, Landroidx/media3/datasource/UdpDataSource;->transferEnded()V

    :cond_2
    return-void
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 102
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    .line 104
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/UdpDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 107
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 109
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 111
    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Landroidx/media3/datasource/UdpDataSource;->socketTimeoutMillis:I

    .line 116
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/UdpDataSource;->opened:Z

    .line 125
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/UdpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    const-wide/16 p0, -0x1

    return-wide p0

    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 v0, 0x7d1

    invoke-direct {p1, p0, v0}, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :catch_1
    move-exception p0

    .line 118
    new-instance p1, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 v0, 0x7d6

    invoke-direct {p1, p0, v0}, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 138
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 146
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    .line 147
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/UdpDataSource;->bytesTransferred(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    new-instance p1, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 p2, 0x7d1

    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :catch_1
    move-exception p0

    .line 140
    new-instance p1, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 p2, 0x7d2

    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 150
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 151
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Landroidx/media3/datasource/UdpDataSource;->packetBuffer:[B

    .line 152
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/datasource/UdpDataSource;->packetRemaining:I

    return p3
.end method
