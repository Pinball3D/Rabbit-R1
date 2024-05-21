.class public final Lio/sentry/android/ndk/NdkScopeObserver;
.super Lio/sentry/ScopeObserverAdapter;
.source "NdkScopeObserver.java"


# instance fields
.field private final nativeScope:Lio/sentry/android/ndk/INativeScope;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 23
    new-instance v0, Lio/sentry/android/ndk/NativeScope;

    invoke-direct {v0}, Lio/sentry/android/ndk/NativeScope;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/android/ndk/NdkScopeObserver;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/ndk/INativeScope;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/ndk/INativeScope;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lio/sentry/ScopeObserverAdapter;-><init>()V

    const-string v0, "The SentryOptions object is required."

    .line 27
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string p1, "The NativeScope object is required."

    .line 28
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/ndk/INativeScope;

    iput-object p1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    return-void
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 9

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 52
    :goto_0
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 58
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/sentry/ISerializer;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    move-object v7, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v4, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 61
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Breadcrumb data is not serializable."

    new-array v8, v0, [Ljava/lang/Object;

    invoke-interface {v4, v5, v1, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 65
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getType()Ljava/lang/String;

    move-result-object p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 64
    invoke-interface/range {v1 .. v7}, Lio/sentry/android/ndk/INativeScope;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 67
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Scope sync addBreadcrumb has an error."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, p1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 101
    invoke-interface {v0, p1}, Lio/sentry/android/ndk/INativeScope;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 104
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Scope sync removeExtra(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 105
    invoke-interface {p0, v1, v0, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 83
    invoke-interface {v0, p1}, Lio/sentry/android/ndk/INativeScope;->removeTag(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 85
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Scope sync removeTag(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, v0, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 92
    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/INativeScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Scope sync setExtra(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 74
    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/INativeScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 76
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Scope sync setTag(%s) has an error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 36
    invoke-interface {p1}, Lio/sentry/android/ndk/INativeScope;->removeUser()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->nativeScope:Lio/sentry/android/ndk/INativeScope;

    .line 38
    invoke-virtual {p1}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lio/sentry/android/ndk/INativeScope;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Scope sync setUser has an error."

    invoke-interface {p0, v0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
