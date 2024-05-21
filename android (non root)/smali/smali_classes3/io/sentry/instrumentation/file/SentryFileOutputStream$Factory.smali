.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 148
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v1, 0x0

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v2

    invoke-static {p1, v1, p0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 154
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, p2, p0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/FileDescriptor;)Ljava/io/FileOutputStream;
    .locals 2

    .line 159
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 134
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 135
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v3

    invoke-static {v2, p1, p0, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;Z)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 141
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 142
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-static {v2, p2, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    return-object v0
.end method
