.class public final Lio/sentry/android/core/InternalSentrySdk;
.super Ljava/lang/Object;
.source "InternalSentrySdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureEnvelope([B)Lio/sentry/protocol/SentryId;
    .locals 11

    .line 150
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 153
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p0

    .line 156
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v2

    .line 161
    :cond_0
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {v4}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v2

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/sentry/SentryEnvelopeItem;

    .line 167
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v9, p0}, Lio/sentry/SentryEnvelopeItem;->getEvent(Lio/sentry/ISerializer;)Lio/sentry/SentryEvent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 171
    invoke-virtual {v9}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 172
    sget-object v8, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 174
    :cond_2
    invoke-virtual {v9}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 181
    :cond_4
    invoke-static {v0, v1, v8, v7}, Lio/sentry/android/core/InternalSentrySdk;->updateSession(Lio/sentry/IHub;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 183
    invoke-static {p0, v6}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object p0

    .line 184
    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_5
    new-instance p0, Lio/sentry/SentryEnvelope;

    .line 188
    invoke-virtual {v4}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    .line 189
    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p0

    :catchall_0
    move-exception p0

    .line 153
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 191
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to capture envelope"

    invoke-interface {v0, v1, v3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getCurrentScope()Lio/sentry/IScope;
    .locals 3

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 48
    invoke-virtual {v1, v2}, Lio/sentry/HubAdapter;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScope;

    return-object v0
.end method

.method static synthetic lambda$getCurrentScope$0(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V
    .locals 0

    .line 50
    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateSession$1(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V
    .locals 0

    .line 205
    invoke-interface {p4}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 207
    invoke-virtual {p4, p0, p3, p1, p3}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 210
    invoke-virtual {p4}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object p0

    sget-object p1, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne p0, p1, :cond_0

    .line 211
    invoke-virtual {p4}, Lio/sentry/Session;->end()V

    .line 213
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Session is null on updateSession"

    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static serializeScope(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IScope;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Lio/sentry/IScope;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 77
    new-instance v2, Lio/sentry/util/MapObjectWriter;

    invoke-direct {v2, v0}, Lio/sentry/util/MapObjectWriter;-><init>(Ljava/util/Map;)V

    .line 79
    invoke-static {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v3

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v3, v4, v4}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object v4

    .line 81
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 82
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v4

    invoke-virtual {v3}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 85
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 87
    new-instance v3, Lio/sentry/protocol/User;

    invoke-direct {v3}, Lio/sentry/protocol/User;-><init>()V

    .line 88
    invoke-interface {p2, v3}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    .line 90
    :cond_1
    invoke-virtual {v3}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 92
    :try_start_1
    invoke-static {p0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 94
    :try_start_2
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Could not retrieve installation ID"

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_2
    :goto_0
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v3

    if-nez v3, :cond_3

    .line 101
    new-instance v3, Lio/sentry/protocol/App;

    invoke-direct {v3}, Lio/sentry/protocol/App;-><init>()V

    .line 103
    :cond_3
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-static {p0, v4}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v4

    invoke-virtual {v4, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    invoke-virtual {v4}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 111
    :cond_4
    new-instance v4, Lio/sentry/android/core/BuildInfoProvider;

    .line 112
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 115
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    const/16 v6, 0x1000

    .line 114
    invoke-static {p0, v6, v5, v4}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 117
    invoke-static {p0, v4, v3}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/protocol/App;)V

    .line 119
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    const-string p0, "user"

    .line 121
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "contexts"

    .line 122
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "tags"

    .line 123
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "extras"

    .line 124
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "fingerprint"

    .line 125
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "level"

    .line 126
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string p0, "breadcrumbs"

    .line 127
    invoke-interface {v2, p0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object p0

    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p0, v1, p2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Could not serialize scope."

    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static updateSession(Lio/sentry/IHub;Lio/sentry/SentryOptions;Lio/sentry/Session$State;Z)Lio/sentry/Session;
    .locals 2

    .line 202
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 203
    new-instance v1, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, v0, p1}, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda0;-><init>(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/Session;

    return-object p0
.end method
