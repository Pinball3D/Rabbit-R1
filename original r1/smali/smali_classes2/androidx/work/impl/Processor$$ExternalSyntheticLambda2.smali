.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/Processor;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iput-boolean p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iget-boolean p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$2:Z

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/Processor;->lambda$runOnExecuted$2$androidx-work-impl-Processor(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method
