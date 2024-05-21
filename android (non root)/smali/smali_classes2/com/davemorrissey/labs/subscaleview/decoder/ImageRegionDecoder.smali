.class public interface abstract Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;
.super Ljava/lang/Object;
.source "ImageRegionDecoder.java"


# virtual methods
.method public abstract decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
.end method

.method public abstract init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract recycle()V
.end method
