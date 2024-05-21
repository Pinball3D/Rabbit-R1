.class final Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
    }
.end annotation


# instance fields
.field private final constructorSupplier:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

.field private final extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private extractorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V
    .locals 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 516
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 535
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 536
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 540
    invoke-interface {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 545
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating extension"

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 547
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    .line 548
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 549
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public varargs getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 522
    invoke-direct {p0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 527
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 529
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected error creating extractor"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
