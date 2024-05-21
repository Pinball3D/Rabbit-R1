.class public final Lio/sentry/internal/modules/ManifestModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "ManifestModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    }
.end annotation


# instance fields
.field private final NAME_AND_VERSION:Ljava/util/regex/Pattern;

.field private final URL_LIB_PATTERN:Ljava/util/regex/Pattern;

.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    const-class v0, Lio/sentry/internal/modules/ManifestModulesLoader;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/internal/modules/ManifestModulesLoader;-><init>(Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    const-string p2, ".*/(.+)!/META-INF/MANIFEST.MF"

    .line 22
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->URL_LIB_PATTERN:Ljava/util/regex/Pattern;

    const-string p2, "(.*?)-(\\d+\\.\\d+.*).jar"

    .line 23
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->NAME_AND_VERSION:Ljava/util/regex/Pattern;

    .line 32
    invoke-static {p1}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private convertOriginalNameToModule(Ljava/lang/String;)Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->NAME_AND_VERSION:Ljava/util/regex/Pattern;

    .line 72
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    invoke-direct {v0, p1, p0}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private detectModulesViaManifestFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/modules/ManifestModulesLoader$Module;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "META-INF/MANIFEST.MF"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 54
    invoke-direct {p0, v2}, Lio/sentry/internal/modules/ManifestModulesLoader;->extractDependencyNameFromUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-direct {p0, v2}, Lio/sentry/internal/modules/ManifestModulesLoader;->convertOriginalNameToModule(Ljava/lang/String;)Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 61
    iget-object p0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Unable to detect modules via manifest files."

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method private extractDependencyNameFromUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->URL_LIB_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected loadModules()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-direct {p0}, Lio/sentry/internal/modules/ManifestModulesLoader;->detectModulesViaManifestFiles()Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    .line 41
    invoke-static {v1}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->access$000(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->access$100(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
