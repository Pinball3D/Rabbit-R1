.class public final synthetic Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/WorkManagerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/work/impl/OperationImpl;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Landroidx/work/WorkRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$0:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$2:Landroidx/work/impl/OperationImpl;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$4:Landroidx/work/WorkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$0:Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$2:Landroidx/work/impl/OperationImpl;

    iget-object v3, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda2;->f$4:Landroidx/work/WorkRequest;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/work/impl/WorkerUpdater;->$r8$lambda$N89sN1A-Ft8Xw-BLJ76ILDUlQ9k(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/OperationImpl;Lkotlin/jvm/functions/Function0;Landroidx/work/WorkRequest;)V

    return-void
.end method
