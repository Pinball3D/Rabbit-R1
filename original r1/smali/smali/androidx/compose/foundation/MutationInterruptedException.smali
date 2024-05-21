.class final Landroidx/compose/foundation/MutationInterruptedException;
.super Ljava/util/concurrent/CancellationException;
.source "MutatorMutex.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutatorMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutatorMutex.kt\nandroidx/compose/foundation/MutationInterruptedException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,180:1\n26#2:181\n*S KotlinDebug\n*F\n+ 1 MutatorMutex.kt\nandroidx/compose/foundation/MutationInterruptedException\n*L\n64#1:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/foundation/MutationInterruptedException;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "()V",
        "fillInStackTrace",
        "",
        "foundation_release"
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
    .locals 1

    const-string v0, "Mutation interrupted"

    .line 61
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 64
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/MutationInterruptedException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 65
    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method
