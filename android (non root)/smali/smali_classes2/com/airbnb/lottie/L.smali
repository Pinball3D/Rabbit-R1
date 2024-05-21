.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider; = null

.field private static defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates; = null

.field private static disablePathInterpolatorCache:Z = true

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher; = null

.field private static lottieTrace:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/airbnb/lottie/utils/LottieTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache; = null

.field private static networkCacheEnabled:Z = true

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher; = null

.field private static traceEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sput-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->endSection(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getDefaultAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-object v0
.end method

.method public static getDisablePathInterpolatorCache()Z
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    return v0
.end method

.method private static getTrace()Lcom/airbnb/lottie/utils/LottieTrace;
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 68
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/utils/LottieTrace;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/airbnb/lottie/utils/LottieTrace;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieTrace;-><init>()V

    sget-object v1, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 3

    sget-boolean v0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_3

    .line 116
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v2, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 122
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_2

    .line 98
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 103
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sput-object p0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    const/4 p0, 0x0

    sput-object p0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    return-void
.end method

.method public static setDefaultAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public static setDisablePathInterpolatorCache(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sput-object p0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    const/4 p0, 0x0

    sput-object p0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    return-void
.end method

.method public static setNetworkCacheEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    if-nez p0, :cond_1

    .line 45
    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object p0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    :cond_1
    return-void
.end method
