.class Landroidx/work/impl/utils/CancelWorkRunnable$1;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/CancelWorkRunnable;->forId(Ljava/util/UUID;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$workManagerImpl",
            "val$id"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$id:Ljava/util/UUID;

    .line 118
    invoke-direct {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 122
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$id:Ljava/util/UUID;

    .line 125
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/work/impl/utils/CancelWorkRunnable$1;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 130
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/CancelWorkRunnable$1;->reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V

    return-void

    :catchall_0
    move-exception p0

    .line 128
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 129
    throw p0
.end method
