.class public final Lkotlinx/coroutines/internal/Synchronized_commonKt;
.super Ljava/lang/Object;
.source "Synchronized.common.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSynchronized.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,33:1\n20#2:34\n*S KotlinDebug\n*F\n+ 1 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n*L\n31#1:34\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\u0008\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "synchronized",
        "T",
        "lock",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "block",
        "Lkotlin/Function0;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 34
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit p0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit p0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method
