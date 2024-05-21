.class public interface abstract Landroidx/media3/datasource/cache/CacheKeyFactory;
.super Ljava/lang/Object;
.source "CacheKeyFactory.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/datasource/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroidx/media3/datasource/cache/CacheKeyFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/CacheKeyFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/datasource/cache/CacheKeyFactory;->DEFAULT:Landroidx/media3/datasource/cache/CacheKeyFactory;

    return-void
.end method

.method public static synthetic lambda$static$0(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;
.end method
