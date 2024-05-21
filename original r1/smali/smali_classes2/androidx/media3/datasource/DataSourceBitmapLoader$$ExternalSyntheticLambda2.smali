.class public final synthetic Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$loadBitmap$2$androidx-media3-datasource-DataSourceBitmapLoader(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
