.class final Lio/sentry/instrumentation/file/FileOutputStreamInitData;
.super Ljava/lang/Object;
.source "FileOutputStreamInitData.java"


# instance fields
.field final append:Z

.field final delegate:Ljava/io/FileOutputStream;

.field final file:Ljava/io/File;

.field final options:Lio/sentry/SentryOptions;

.field final span:Lio/sentry/ISpan;


# direct methods
.method constructor <init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->file:Ljava/io/File;

    iput-boolean p2, p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->append:Z

    iput-object p3, p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->span:Lio/sentry/ISpan;

    iput-object p4, p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    iput-object p5, p0, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->options:Lio/sentry/SentryOptions;

    return-void
.end method
