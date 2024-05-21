.class public final Lio/sentry/instrumentation/file/SentryFileWriter;
.super Ljava/io/OutputStreamWriter;
.source "SentryFileWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 26
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;ZLio/sentry/IHub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 35
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IHub;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 30
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 12
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 17
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-direct {v0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method
