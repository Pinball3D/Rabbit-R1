.class public final synthetic Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/datasource/cache/CacheSpan;

    check-cast p2, Landroidx/media3/datasource/cache/CacheSpan;

    invoke-static {p1, p2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->$r8$lambda$IrJohXX_Igd4qS3HsDKy6poxjfs(Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)I

    move-result p0

    return p0
.end method
