.class final Lio/sentry/instrumentation/file/FileInputStreamInitData;
.super Ljava/lang/Object;
.source "FileInputStreamInitData.java"


# instance fields
.field final delegate:Ljava/io/FileInputStream;

.field final file:Ljava/io/File;

.field final options:Lio/sentry/SentryOptions;

.field final span:Lio/sentry/ISpan;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/FileInputStreamInitData;->file:Ljava/io/File;

    iput-object p2, p0, Lio/sentry/instrumentation/file/FileInputStreamInitData;->span:Lio/sentry/ISpan;

    iput-object p3, p0, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    iput-object p4, p0, Lio/sentry/instrumentation/file/FileInputStreamInitData;->options:Lio/sentry/SentryOptions;

    return-void
.end method
