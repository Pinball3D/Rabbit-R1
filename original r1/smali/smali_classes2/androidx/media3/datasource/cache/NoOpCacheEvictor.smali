.class public final Landroidx/media3/datasource/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    return-void
.end method

.method public onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onSpanTouched(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onStartFile(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
