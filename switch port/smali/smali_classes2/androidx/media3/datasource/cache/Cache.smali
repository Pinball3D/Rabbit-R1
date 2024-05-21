.class public interface abstract Landroidx/media3/datasource/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/Cache$CacheException;,
        Landroidx/media3/datasource/cache/Cache$Listener;
    }
.end annotation


# static fields
.field public static final UID_UNSET:J = -0x1L


# virtual methods
.method public abstract addListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/datasource/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet<",
            "Landroidx/media3/datasource/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyContentMetadataMutations(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract commitFile(Ljava/io/File;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract getCacheSpace()J
.end method

.method public abstract getCachedBytes(Ljava/lang/String;JJ)J
.end method

.method public abstract getCachedLength(Ljava/lang/String;JJ)J
.end method

.method public abstract getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Landroidx/media3/datasource/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUid()J
.end method

.method public abstract isCached(Ljava/lang/String;JJ)Z
.end method

.method public abstract release()V
.end method

.method public abstract releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
.end method

.method public abstract removeListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)V
.end method

.method public abstract removeResource(Ljava/lang/String;)V
.end method

.method public abstract removeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
.end method

.method public abstract startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract startReadWrite(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroidx/media3/datasource/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract startReadWriteNonBlocking(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/cache/Cache$CacheException;
        }
    .end annotation
.end method
