.class public final synthetic Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/utils/WorkForegroundRunnable;

.field public final synthetic f$1:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/WorkForegroundRunnable;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/WorkForegroundRunnable;->lambda$run$0$androidx-work-impl-utils-WorkForegroundRunnable(Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method
