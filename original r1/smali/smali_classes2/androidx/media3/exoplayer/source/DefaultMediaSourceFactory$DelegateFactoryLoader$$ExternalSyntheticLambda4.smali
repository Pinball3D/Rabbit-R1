.class public final synthetic Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public final synthetic f$1:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4$androidx-media3-exoplayer-source-DefaultMediaSourceFactory$DelegateFactoryLoader(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
