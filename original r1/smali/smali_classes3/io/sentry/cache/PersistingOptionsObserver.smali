.class public final Lio/sentry/cache/PersistingOptionsObserver;
.super Ljava/lang/Object;
.source "PersistingOptionsObserver.java"

# interfaces
.implements Lio/sentry/IOptionsObserver;


# static fields
.field public static final DIST_FILENAME:Ljava/lang/String; = "dist.json"

.field public static final ENVIRONMENT_FILENAME:Ljava/lang/String; = "environment.json"

.field public static final OPTIONS_CACHE:Ljava/lang/String; = ".options-cache"

.field public static final PROGUARD_UUID_FILENAME:Ljava/lang/String; = "proguard-uuid.json"

.field public static final RELEASE_FILENAME:Ljava/lang/String; = "release.json"

.field public static final SDK_VERSION_FILENAME:Ljava/lang/String; = "sdk-version.json"

.field public static final TAGS_FILENAME:Ljava/lang/String; = "tags.json"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    const-string v0, ".options-cache"

    .line 81
    invoke-static {p0, v0, p1}, Lio/sentry/cache/CacheUtils;->delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, p2, v0}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    const-string v0, ".options-cache"

    .line 96
    invoke-static {p0, v0, p1, p2, p3}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private store(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    const-string v0, ".options-cache"

    .line 77
    invoke-static {p0, p1, v0, p2}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setDist(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dist.json"

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "environment.json"

    if-nez p1, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "proguard-uuid.json"

    if-nez p1, :cond_0

    .line 38
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 1

    const-string v0, "release.json"

    if-nez p1, :cond_0

    .line 29
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 1

    const-string v0, "sdk-version.json"

    if-nez p1, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags.json"

    .line 73
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
