.class public final Lcom/google/common/cache/RemovalListeners;
.super Ljava/lang/Object;
.source "RemovalListeners.java"


# annotations
.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asynchronous(Lcom/google/common/cache/RemovalListener;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/RemovalListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/RemovalListener<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/RemovalListener;)V

    return-object v0
.end method

.method static synthetic lambda$asynchronous$0(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V
    .locals 0

    .line 46
    invoke-interface {p0, p1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V

    return-void
.end method

.method static synthetic lambda$asynchronous$1(Ljava/util/concurrent/Executor;Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/google/common/cache/RemovalListeners$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
