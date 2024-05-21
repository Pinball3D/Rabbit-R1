.class final Landroidx/media3/datasource/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CachedContent$Range;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedContent"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/datasource/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private final lockedRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/datasource/cache/CachedContent$Range;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 55
    sget-object v0, Landroidx/media3/datasource/cache/DefaultContentMetadata;->EMPTY:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/cache/CachedContent;-><init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroidx/media3/datasource/cache/DefaultContentMetadata;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    iput-object p2, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 62
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSpan(Landroidx/media3/datasource/cache/SimpleCacheSpan;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 138
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyMetadataMutations(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 78
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->copyWithMutationsApplied(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 79
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    check-cast p1, Landroidx/media3/datasource/cache/CachedContent;

    iget v2, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    .line 273
    iget v3, p1, Landroidx/media3/datasource/cache/CachedContent;->id:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    iget-object v3, p1, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 275
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    iget-object p1, p1, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 276
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCachedBytesLength(JJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 180
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 181
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent;->getSpan(JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v3

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {v2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v5, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    :goto_2
    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    neg-long p0, p0

    return-wide p0

    :cond_3
    add-long v7, p1, p3

    cmp-long v0, v7, v0

    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    move-wide v5, v7

    .line 192
    :goto_3
    iget-wide v0, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v7, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v7

    cmp-long v3, v0, v5

    if-gez v3, :cond_7

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 194
    invoke-virtual {p0, v2, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    .line 195
    iget-wide v3, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_6

    goto :goto_4

    .line 201
    :cond_6
    iget-wide v3, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v7, v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v3, v7

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_5

    :cond_7
    :goto_4
    sub-long/2addr v0, p1

    .line 208
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMetadata()Landroidx/media3/datasource/cache/DefaultContentMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    return-object p0
.end method

.method public getSpan(JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 6

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 155
    invoke-static {v0, p1, p2}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    if-eqz v1, :cond_0

    .line 157
    iget-wide v2, v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    if-eqz v0, :cond_2

    .line 162
    iget-wide v0, v0, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v0, p1

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    move-wide p3, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 165
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->createHole(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object p0

    return-object p0
.end method

.method public getSpans()Ljava/util/TreeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Landroidx/media3/datasource/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->key:Ljava/lang/String;

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->metadata:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    .line 260
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 242
    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isFullyLocked(JJ)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;->contains(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isFullyUnlocked()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public lockRange(JJ)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;->intersects(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent$Range;-><init>(JJ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public removeSpan(Landroidx/media3/datasource/cache/CacheSpan;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 247
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 248
    iget-object p0, p1, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    if-eqz p0, :cond_0

    .line 249
    iget-object p0, p1, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setLastTouchTimestamp(Landroidx/media3/datasource/cache/SimpleCacheSpan;JZ)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 7

    iget-object v0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 222
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 223
    iget-object v0, p1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz p4, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/io/File;

    .line 226
    iget-wide v3, p1, Landroidx/media3/datasource/cache/SimpleCacheSpan;->position:J

    iget v2, p0, Landroidx/media3/datasource/cache/CachedContent;->id:I

    move-wide v5, p2

    .line 227
    invoke-static/range {v1 .. v6}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p4

    .line 228
    invoke-virtual {v0, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to rename "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CachedContent"

    invoke-static {v1, p4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 236
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public unlockRange(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CachedContent$Range;

    iget-wide v1, v1, Landroidx/media3/datasource/cache/CachedContent$Range;->position:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
