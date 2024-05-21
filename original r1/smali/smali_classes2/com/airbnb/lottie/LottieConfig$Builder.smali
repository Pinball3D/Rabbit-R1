.class public final Lcom/airbnb/lottie/LottieConfig$Builder;
.super Ljava/lang/Object;
.source "LottieConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field private defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

.field private disablePathInterpolatorCache:Z

.field private enableNetworkCache:Z

.field private enableSystraceMarkers:Z

.field private networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableNetworkCache:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->disablePathInterpolatorCache:Z

    .line 45
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method


# virtual methods
.method public build()Lcom/airbnb/lottie/LottieConfig;
    .locals 9

    .line 146
    new-instance v8, Lcom/airbnb/lottie/LottieConfig;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    iget-boolean v4, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableNetworkCache:Z

    iget-boolean v5, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->disablePathInterpolatorCache:Z

    iget-object v6, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/LottieConfig;-><init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;ZZZLcom/airbnb/lottie/AsyncUpdates;Lcom/airbnb/lottie/LottieConfig$1;)V

    return-object v8
.end method

.method public setDefaultAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-object p0
.end method

.method public setDisablePathInterpolatorCache(Z)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->disablePathInterpolatorCache:Z

    return-object p0
.end method

.method public setEnableNetworkCache(Z)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableNetworkCache:Z

    return-object p0
.end method

.method public setEnableSystraceMarkers(Z)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    return-object p0
.end method

.method public setNetworkCacheDir(Ljava/io/File;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/airbnb/lottie/LottieConfig$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieConfig$Builder$1;-><init>(Lcom/airbnb/lottie/LottieConfig$Builder;Ljava/io/File;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a cache provider!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNetworkCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/airbnb/lottie/LottieConfig$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieConfig$Builder$2;-><init>(Lcom/airbnb/lottie/LottieConfig$Builder;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a cache provider!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNetworkFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-object p0
.end method
