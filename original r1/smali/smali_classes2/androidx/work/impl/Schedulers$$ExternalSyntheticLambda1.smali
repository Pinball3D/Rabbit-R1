.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/work/Configuration;

.field public final synthetic f$3:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Landroidx/work/Configuration;

    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Landroidx/work/Configuration;

    iget-object v3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkDatabase;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/work/impl/Schedulers;->lambda$registerRescheduling$1(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method
