.class public final synthetic Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

.field public final synthetic f$1:Landroidx/work/impl/StartStopToken;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/StartStopToken;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/StartStopToken;

    invoke-static {v0, p0}, Landroidx/work/impl/background/greedy/TimeLimiter;->$r8$lambda$-vpfYFCUMjLBVsa47nEhUzlZ9xY(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V

    return-void
.end method
