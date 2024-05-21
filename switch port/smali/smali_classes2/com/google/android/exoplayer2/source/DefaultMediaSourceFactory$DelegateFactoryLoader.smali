.class final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 556
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 557
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 558
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 615
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x1

    .line 616
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x2

    .line 617
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x3

    .line 618
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x4

    .line 619
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic lambda$maybeLoadSupplier$0(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 637
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$maybeLoadSupplier$1(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 644
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$maybeLoadSupplier$2(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 650
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 656
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Supplier;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 629
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 659
    :cond_1
    :try_start_0
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_2
    const-string v0, "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"

    .line 654
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 656
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 648
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 649
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 650
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    goto :goto_1

    :cond_4
    const-string v2, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 641
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 643
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 644
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    goto :goto_1

    :cond_5
    const-string v2, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 635
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 636
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 637
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v3

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 668
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 670
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    if-eqz v0, :cond_0

    return-object v0

    .line 574
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_1
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    if-eqz v1, :cond_2

    .line 581
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v1, :cond_3

    .line 584
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 563
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$maybeLoadSupplier$4$com-google-android-exoplayer2-source-DefaultMediaSourceFactory$DelegateFactoryLoader(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 1

    .line 660
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 595
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 596
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 602
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 603
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 609
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 610
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method
