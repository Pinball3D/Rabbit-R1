.class public final synthetic Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$4:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$4:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;->f$4:Lio/sentry/ILogger;

    invoke-static {v0, v1, v2, v3, p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->lambda$snapshotViewHierarchy$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V

    return-void
.end method
