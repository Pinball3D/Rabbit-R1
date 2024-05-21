.class final Lcom/google/common/util/concurrent/AbstractFuture$Listener;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# static fields
.field static final TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final task:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
