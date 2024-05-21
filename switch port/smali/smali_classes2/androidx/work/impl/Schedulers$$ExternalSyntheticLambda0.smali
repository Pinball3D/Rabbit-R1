.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic f$2:Landroidx/work/Configuration;

.field public final synthetic f$3:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$2:Landroidx/work/Configuration;

    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$2:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/WorkDatabase;

    invoke-static {v0, v1, v2, p0}, Landroidx/work/impl/Schedulers;->lambda$registerRescheduling$0(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method
