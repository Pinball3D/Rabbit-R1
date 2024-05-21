.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/io/FileOutputStream;

.field private final spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 62
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->getFileDescriptor(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 63
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 64
    iget-object p1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V
    .locals 3

    .line 55
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 56
    new-instance p2, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v0, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->file:Ljava/io/File;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 57
    iget-object p1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;ZLio/sentry/IHub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-static {p1, p2, v0, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    return-object p0
.end method

.method private static getFileDescriptor(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 126
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "No file descriptor"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "file.write"

    .line 73
    invoke-static {p3, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    if-nez p2, :cond_0

    .line 75
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :cond_0
    move-object v5, p2

    .line 77
    new-instance p2, Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    invoke-interface {p3}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/FileOutputStreamInitData;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V

    return-object p2
.end method

.method private static init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 7

    const-string v0, "file.write"

    .line 82
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_0
    move-object v5, p1

    .line 86
    new-instance p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/FileOutputStreamInitData;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V

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

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 118
    invoke-virtual {v0, p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finish(Ljava/io/Closeable;)V

    return-void
.end method

.method synthetic lambda$write$0$io-sentry-instrumentation-file-SentryFileOutputStream(I)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 93
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    const/4 p0, 0x1

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$write$1$io-sentry-instrumentation-file-SentryFileOutputStream([B)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 102
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 103
    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$write$2$io-sentry-instrumentation-file-SentryFileOutputStream([BII)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 91
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;I)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 100
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 109
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda0;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    return-void
.end method
