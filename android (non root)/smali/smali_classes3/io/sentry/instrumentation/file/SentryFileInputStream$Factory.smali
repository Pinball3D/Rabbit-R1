.class public final Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 137
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    return-object v0
.end method

.method static create(Ljava/io/FileInputStream;Ljava/io/File;Lio/sentry/IHub;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 149
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;
    .locals 2

    .line 142
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    .line 143
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 130
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    return-object v0
.end method
