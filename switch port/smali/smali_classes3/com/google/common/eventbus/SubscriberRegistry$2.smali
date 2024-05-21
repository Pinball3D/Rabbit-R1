.class Lcom/google/common/eventbus/SubscriberRegistry$2;
.super Lcom/google/common/cache/CacheLoader;
.source "SubscriberRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/SubscriberRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/google/common/collect/ImmutableSet<",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry$2;->load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method
