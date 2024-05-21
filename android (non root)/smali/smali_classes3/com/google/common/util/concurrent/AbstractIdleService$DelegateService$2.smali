.class Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$2;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    .line 78
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->shutDown()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    .line 79
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->notifyStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->notifyFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
