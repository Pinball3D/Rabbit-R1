.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;
.super Ljava/lang/ThreadLocal;
.source "AndroidUiDispatcher.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidUiDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidUiDispatcher.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidUiDispatcher.android.kt\nandroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1",
        "Ljava/lang/ThreadLocal;",
        "Lkotlin/coroutines/CoroutineContext;",
        "initialValue",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;->initialValue()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 167
    new-instance p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 168
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v1}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "createAsync(\n           \u2026d\")\n                    )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->getFrameClock()Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no Looper on this thread"

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
