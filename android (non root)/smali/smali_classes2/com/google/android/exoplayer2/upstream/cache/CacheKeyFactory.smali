.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
.super Ljava/lang/Object;
.source "CacheKeyFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
.end method
