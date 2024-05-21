.class public final synthetic Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda0;->f$0:[B

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
