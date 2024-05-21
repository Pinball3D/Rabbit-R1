.class public final synthetic Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$0(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
