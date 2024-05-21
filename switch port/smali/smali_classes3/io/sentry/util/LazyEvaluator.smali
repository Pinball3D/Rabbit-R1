.class public final Lio/sentry/util/LazyEvaluator;
.super Ljava/lang/Object;
.source "LazyEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/LazyEvaluator$Evaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    iput-object p1, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 33
    invoke-interface {v0}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
