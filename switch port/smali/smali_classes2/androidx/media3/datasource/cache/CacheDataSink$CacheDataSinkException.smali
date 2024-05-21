.class public final Landroidx/media3/datasource/cache/CacheDataSink$CacheDataSinkException;
.super Landroidx/media3/datasource/cache/Cache$CacheException;
.source "CacheDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheDataSinkException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
