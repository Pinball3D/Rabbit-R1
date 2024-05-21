.class public final Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createSimpleCoroutineForSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005H\u0014\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "invokeSuspend",
        "",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 264
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method
