.class Lio/sentry/android/core/LifecycleWatcher$1;
.super Ljava/util/TimerTask;
.source "LifecycleWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/LifecycleWatcher;->scheduleEndSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/LifecycleWatcher;


# direct methods
.method constructor <init>(Lio/sentry/android/core/LifecycleWatcher;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    .line 122
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    const-string v1, "end"

    .line 125
    invoke-static {v0, v1}, Lio/sentry/android/core/LifecycleWatcher;->access$000(Lio/sentry/android/core/LifecycleWatcher;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    .line 126
    invoke-static {p0}, Lio/sentry/android/core/LifecycleWatcher;->access$100(Lio/sentry/android/core/LifecycleWatcher;)Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->endSession()V

    return-void
.end method
