.class final Lcom/google/common/eventbus/SubscriberRegistry;
.super Ljava/lang/Object;
.source "SubscriberRegistry.java"


# annotations
.annotation runtime Lcom/google/common/eventbus/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    }
.end annotation


# static fields
.field private static final flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bus:Lcom/google/common/eventbus/EventBus;

.field private final subscribers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 151
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$1;-><init>()V

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    .line 220
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$2;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$2;-><init>()V

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/EventBus;

    iput-object p1, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 168
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 169
    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    .line 170
    invoke-static {v4, p1, v2}, Lcom/google/common/eventbus/Subscriber;->create(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/Subscriber;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
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

    :try_start_0
    sget-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    .line 240
    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ImmutableSet;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    .line 177
    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 180
    throw p0
.end method

.method private static getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object p0

    .line 186
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 187
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 189
    const-class v6, Lcom/google/common/eventbus/Subscribe;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_2

    .line 191
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 192
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const-string v9, "Method %s has @Subscribe annotation but has %s parameters. Subscriber methods must have exactly 1 parameter."

    array-length v10, v6

    invoke-static {v7, v9, v5, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;I)V

    .line 199
    aget-object v7, v6, v3

    .line 200
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    xor-int/2addr v7, v8

    aget-object v8, v6, v3

    .line 205
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aget-object v6, v6, v3

    .line 206
    invoke-static {v6}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "@Subscribe method %s\'s parameter is %s. Subscriber methods cannot accept primitives. Consider changing the parameter to %s."

    .line 199
    invoke-static {v7, v9, v5, v8, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    new-instance v6, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;

    invoke-direct {v6, v5}, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;-><init>(Ljava/lang/reflect/Method;)V

    .line 209
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 210
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getSubscribers(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 134
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method getSubscribersForTesting(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 120
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method register(Ljava/lang/Object;)V
    .locals 4

    .line 77
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iget-object v3, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 91
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method unregister(Ljava/lang/Object;)V
    .locals 4

    .line 97
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "missing event subscriber for an annotated method. Is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " registered?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
