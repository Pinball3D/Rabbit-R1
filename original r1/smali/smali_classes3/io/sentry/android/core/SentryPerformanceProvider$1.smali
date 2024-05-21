.class Lio/sentry/android/core/SentryPerformanceProvider$1;
.super Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;
.source "SentryPerformanceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/SentryPerformanceProvider;->onAppLaunched(Landroid/content/Context;Lio/sentry/android/core/performance/AppStartMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final activityLifecycleMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/android/core/SentryPerformanceProvider;

.field final synthetic val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

.field final synthetic val$firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryPerformanceProvider;Lio/sentry/android/core/performance/AppStartMetrics;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->this$0:Lio/sentry/android/core/SentryPerformanceProvider;

    iput-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    iput-object p3, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    invoke-direct {p0}, Lio/sentry/android/core/performance/ActivityLifecycleCallbacksAdapter;-><init>()V

    .line 209
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method synthetic lambda$onActivityStarted$0$io-sentry-android-core-SentryPerformanceProvider$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->this$0:Lio/sentry/android/core/SentryPerformanceProvider;

    .line 271
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->onAppStartDone()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 228
    invoke-virtual {p1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object p1

    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    if-nez p2, :cond_0

    .line 231
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    goto :goto_0

    .line 232
    :cond_0
    sget-object p1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 229
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartType(Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;)V

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 296
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 239
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 243
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {p0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 246
    invoke-virtual {p0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".onCreate"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 282
    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->stop()V

    .line 287
    invoke-virtual {v0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".onStart"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/sentry/android/core/performance/TimeSpan;->setDescription(Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 289
    invoke-virtual {p0, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->addActivityLifecycleTimeSpans(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)V

    :cond_1
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 216
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance p2, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    invoke-direct {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;-><init>()V

    .line 221
    invoke-virtual {p2}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnCreate()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 222
    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 3

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$appStartMetrics:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 253
    invoke-virtual {v2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->activityLifecycleMap:Ljava/util/WeakHashMap;

    .line 256
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    if-eqz p0, :cond_1

    .line 258
    invoke-virtual {p0}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->getOnStart()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    :cond_1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1;->val$firstDrawDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    new-instance v1, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryPerformanceProvider$1;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance p0, Lio/sentry/android/core/BuildInfoProvider;

    .line 275
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 267
    invoke-static {p1, v1, p0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void
.end method
