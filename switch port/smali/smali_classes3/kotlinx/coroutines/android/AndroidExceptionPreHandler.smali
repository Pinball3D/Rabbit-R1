.class public final Lkotlinx/coroutines/android/AndroidExceptionPreHandler;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "AndroidExceptionPreHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/android/AndroidExceptionPreHandler;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "()V",
        "_preHandler",
        "",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "preHandler",
        "Ljava/lang/reflect/Method;",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    return-void
.end method

.method private final preHandler()Ljava/lang/reflect/Method;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 21
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :try_start_0
    const-class v1, Ljava/lang/Thread;

    const-string v2, "getUncaughtExceptionPreHandler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    move-object v0, v1

    :catchall_0
    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
