.class final Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadConfinedTaskQueue"
.end annotation


# instance fields
.field nextExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field nextTask:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field thread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ExecutionSequencer$1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ExecutionSequencer$ThreadConfinedTaskQueue;-><init>()V

    return-void
.end method
