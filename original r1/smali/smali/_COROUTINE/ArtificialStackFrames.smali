.class public final L_COROUTINE/ArtificialStackFrames;
.super Ljava/lang/Object;
.source "CoroutineDebugging.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "L_COROUTINE/ArtificialStackFrames;",
        "",
        "()V",
        "coroutineBoundary",
        "Ljava/lang/StackTraceElement;",
        "coroutineCreation",
        "kotlinx-coroutines-core"
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
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final coroutineBoundary()Ljava/lang/StackTraceElement;
    .locals 1

    .line 46
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    const-class v0, L_COROUTINE/_BOUNDARY;

    const-string v0, "_BOUNDARY"

    invoke-static {p0, v0}, L_COROUTINE/CoroutineDebuggingKt;->access$artificialFrame(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public final coroutineCreation()Ljava/lang/StackTraceElement;
    .locals 1

    .line 34
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    const-class v0, L_COROUTINE/_CREATION;

    const-string v0, "_CREATION"

    invoke-static {p0, v0}, L_COROUTINE/CoroutineDebuggingKt;->access$artificialFrame(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
