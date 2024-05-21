.class public final Lio/sentry/MainEventProcessor;
.super Ljava/lang/Object;
.source "MainEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;
.implements Ljava/io/Closeable;


# instance fields
.field private volatile hostnameCache:Lio/sentry/HostnameCache;

.field private final options:Lio/sentry/SentryOptions;

.field private final sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

.field private final sentryThreadFactory:Lio/sentry/SentryThreadFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    const-string v0, "The SentryOptions is required."

    .line 32
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 34
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {v0, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 37
    new-instance v1, Lio/sentry/SentryExceptionFactory;

    invoke-direct {v1, v0}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object v1, p0, Lio/sentry/MainEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 38
    new-instance v1, Lio/sentry/SentryThreadFactory;

    invoke-direct {v1, v0, p1}, Lio/sentry/SentryThreadFactory;-><init>(Lio/sentry/SentryStackTraceFactory;Lio/sentry/SentryOptions;)V

    iput-object v1, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/SentryThreadFactory;Lio/sentry/SentryExceptionFactory;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    const-string v0, "The SentryOptions is required."

    .line 45
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    const-string p1, "The SentryThreadFactory is required."

    .line 47
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryThreadFactory;

    iput-object p1, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    const-string p1, "The SentryExceptionFactory is required."

    .line 49
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryExceptionFactory;

    iput-object p1, p0, Lio/sentry/MainEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    return-void
.end method

.method private ensureHostnameCache()V
    .locals 1

    iget-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    if-nez v0, :cond_1

    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lio/sentry/HostnameCache;->getInstance()Lio/sentry/HostnameCache;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    .line 194
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private isCachedHint(Lio/sentry/Hint;)Z
    .locals 0

    .line 287
    const-class p0, Lio/sentry/hints/Cached;

    invoke-static {p1, p0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object p0

    if-nez p0, :cond_0

    .line 225
    new-instance p0, Lio/sentry/protocol/User;

    invoke-direct {p0}, Lio/sentry/protocol/User;-><init>()V

    .line 226
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "{{auto}}"

    .line 229
    invoke-virtual {p0, p1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;)V

    .line 131
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;)V

    .line 132
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setServerName(Lio/sentry/SentryBaseEvent;)V

    .line 133
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;)V

    .line 134
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setSdk(Lio/sentry/SentryBaseEvent;)V

    .line 135
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setTags(Lio/sentry/SentryBaseEvent;)V

    .line 136
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setCommons(Lio/sentry/SentryBaseEvent;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setPlatform(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setDebugMeta(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 70
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lio/sentry/protocol/DebugImage;

    invoke-direct {v1}, Lio/sentry/protocol/DebugImage;-><init>()V

    const-string v2, "proguard"

    .line 72
    invoke-virtual {v1, v2}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 77
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBundleIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    new-instance v2, Lio/sentry/protocol/DebugImage;

    invoke-direct {v2}, Lio/sentry/protocol/DebugImage;-><init>()V

    const-string v3, "jvm"

    .line 79
    invoke-virtual {v2, v3}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v1}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 85
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object p0

    if-nez p0, :cond_2

    .line 88
    new-instance p0, Lio/sentry/protocol/DebugMeta;

    invoke-direct {p0}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 91
    invoke-virtual {p0, v0}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :goto_1
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    :cond_4
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 200
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setEnvironment(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 171
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setEnvironment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setExceptions(Lio/sentry/SentryEvent;)V
    .locals 1

    .line 234
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowableMechanism()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 236
    invoke-virtual {p0, v0}, Lio/sentry/SentryExceptionFactory;->getSentryExceptions(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setModules(Lio/sentry/SentryEvent;)V
    .locals 1

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 101
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/internal/modules/IModulesLoader;->getOrLoadModules()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getModules()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setModules(Ljava/util/Map;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private setPlatform(Lio/sentry/SentryBaseEvent;)V
    .locals 0

    .line 157
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getPlatform()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "java"

    .line 159
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setPlatform(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRelease(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 165
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setRelease(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setSdk(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 206
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    :cond_0
    return-void
.end method

.method private setServerName(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 176
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 177
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setServerName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 180
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lio/sentry/MainEventProcessor;->ensureHostnameCache()V

    iget-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    .line 183
    invoke-virtual {p0}, Lio/sentry/HostnameCache;->getHostname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setServerName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setTags(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 211
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 214
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 5

    .line 241
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 246
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryException;

    .line 250
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    :cond_1
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 261
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Lio/sentry/hints/AbnormalExit;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 269
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_4

    .line 270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/MainEventProcessor;->isCachedHint(Lio/sentry/Hint;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    .line 274
    invoke-virtual {p0}, Lio/sentry/SentryThreadFactory;->getCurrentThread()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    goto :goto_3

    .line 262
    :cond_5
    :goto_1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p2

    .line 264
    instance-of v0, p2, Lio/sentry/hints/AbnormalExit;

    if-eqz v0, :cond_6

    .line 265
    check-cast p2, Lio/sentry/hints/AbnormalExit;

    invoke-interface {p2}, Lio/sentry/hints/AbnormalExit;->ignoreCurrentThread()Z

    move-result p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->sentryThreadFactory:Lio/sentry/SentryThreadFactory;

    .line 268
    invoke-virtual {p0, v1, p2}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 1

    .line 116
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 120
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 124
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 121
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    .line 293
    invoke-virtual {p0}, Lio/sentry/HostnameCache;->close()V

    :cond_0
    return-void
.end method

.method getHostnameCache()Lio/sentry/HostnameCache;
    .locals 0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    return-object p0
.end method

.method isClosed()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/MainEventProcessor;->hostnameCache:Lio/sentry/HostnameCache;

    .line 299
    invoke-virtual {p0}, Lio/sentry/HostnameCache;->isClosed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;)V

    .line 55
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setExceptions(Lio/sentry/SentryEvent;)V

    .line 56
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 57
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setModules(Lio/sentry/SentryEvent;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    :cond_0
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;)V

    .line 143
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 145
    invoke-direct {p0, p1, p2}, Lio/sentry/MainEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lio/sentry/MainEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;)V

    :cond_0
    return-object p1
.end method
