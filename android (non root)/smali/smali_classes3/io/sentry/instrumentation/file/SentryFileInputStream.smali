.class public final Lio/sentry/instrumentation/file/SentryFileInputStream;
.super Ljava/io/FileInputStream;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/io/FileInputStream;

.field private final spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 57
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->getFileDescriptor(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 58
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 59
    iget-object p1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V
    .locals 3

    .line 50
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 51
    new-instance p2, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v0, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->file:Ljava/io/File;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 52
    iget-object p1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IHub;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/sentry/IHub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 36
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/FileDescriptor;Lio/sentry/IHub;)V

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;Lio/sentry/IHub;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IHub;)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    return-object p0
.end method

.method private static getFileDescriptor(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 122
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "No file descriptor"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "file.read"

    .line 65
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    :cond_0
    new-instance v1, Lio/sentry/instrumentation/file/FileInputStreamInitData;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-direct {v1, p0, v0, p1, p2}, Lio/sentry/instrumentation/file/FileInputStreamInitData;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V

    return-object v1
.end method

.method private static init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 2

    const-string v0, "file.read"

    .line 76
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 80
    :cond_0
    new-instance p0, Lio/sentry/instrumentation/file/FileInputStreamInitData;

    const/4 v1, 0x0

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-direct {p0, v1, v0, p1, p2}, Lio/sentry/instrumentation/file/FileInputStreamInitData;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 114
    invoke-virtual {v0, p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finish(Ljava/io/Closeable;)V

    return-void
.end method

.method synthetic lambda$read$0$io-sentry-instrumentation-file-SentryFileInputStream(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 90
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result p0

    .line 91
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 92
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$read$1$io-sentry-instrumentation-file-SentryFileInputStream([B)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 99
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$read$2$io-sentry-instrumentation-file-SentryFileInputStream([BII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$skip$3$io-sentry-instrumentation-file-SentryFileInputStream(J)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 109
    invoke-virtual {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 88
    new-instance v2, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 99
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 104
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda1;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 109
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda3;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;J)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
