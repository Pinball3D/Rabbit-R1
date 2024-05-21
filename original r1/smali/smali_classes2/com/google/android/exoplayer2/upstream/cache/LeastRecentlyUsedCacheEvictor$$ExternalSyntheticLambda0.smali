.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->$r8$lambda$fGGQpb4lm4rCLKn4-zylNcQiqeo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p0

    return p0
.end method
