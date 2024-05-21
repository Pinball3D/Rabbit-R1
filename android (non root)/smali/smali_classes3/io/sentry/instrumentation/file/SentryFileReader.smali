.class public final Lio/sentry/instrumentation/file/SentryFileReader;
.super Ljava/io/InputStreamReader;
.source "SentryFileReader.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 16
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/sentry/IHub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 24
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-direct {v0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IHub;)V

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 20
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

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
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-direct {v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
