.class public final synthetic Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$2(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
