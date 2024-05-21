.class final Landroidx/core/graphics/WeightTypefaceApi21;
.super Ljava/lang/Object;
.source "WeightTypefaceApi21.java"


# static fields
.field private static final NATIVE_CREATE_FROM_TYPEFACE_METHOD:Ljava/lang/String; = "nativeCreateFromTypeface"

.field private static final NATIVE_CREATE_WEIGHT_ALIAS_METHOD:Ljava/lang/String; = "nativeCreateWeightAlias"

.field private static final NATIVE_INSTANCE_FIELD:Ljava/lang/String; = "native_instance"

.field private static final TAG:Ljava/lang/String; = "WeightTypeface"

.field private static final sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

.field private static final sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

.field private static final sNativeInstance:Ljava/lang/reflect/Field;

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 62
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    const-class v1, Landroid/graphics/Typeface;

    const-string v2, "nativeCreateFromTypeface"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 64
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 66
    const-class v2, Landroid/graphics/Typeface;

    const-string v4, "nativeCreateWeightAlias"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v7

    .line 67
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    const-class v3, Landroid/graphics/Typeface;

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeightTypeface"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    sput-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    sput-object v2, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    sput-object v3, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    .line 95
    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(J)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 7

    .line 104
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi21;->isPrivateApiAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightCacheLock:Ljava/lang/Object;

    .line 111
    monitor-enter v1

    .line 112
    :try_start_0
    invoke-static {p0}, Landroidx/core/graphics/WeightTypefaceApi21;->getNativeInstance(Landroid/graphics/Typeface;)J

    move-result-wide v2

    sget-object v4, Landroidx/core/graphics/WeightTypefaceApi21;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    .line 113
    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_1

    .line 115
    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 116
    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    .line 120
    monitor-exit v1

    return-object v4

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p0

    if-ne p2, p0, :cond_3

    .line 126
    invoke-static {v2, v3, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateWeightAlias(JI)J

    move-result-wide p0

    .line 125
    invoke-static {p0, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_1

    .line 129
    :cond_3
    invoke-static {v2, v3, p1, p2}, Landroidx/core/graphics/WeightTypefaceApi21;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide p0

    .line 128
    invoke-static {p0, p1}, Landroidx/core/graphics/WeightTypefaceApi21;->create(J)Landroid/graphics/Typeface;

    move-result-object p0

    .line 131
    :goto_1
    invoke-virtual {v5, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .locals 2

    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static isPrivateApiAvailable()Z
    .locals 1

    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeInstance:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static nativeCreateFromTypefaceWithExactStyle(JIZ)J
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    :try_start_0
    sget-object v2, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateFromTypeface:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p3, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static nativeCreateWeightAlias(JI)J
    .locals 2

    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi21;->sNativeCreateWeightAlias:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 167
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
