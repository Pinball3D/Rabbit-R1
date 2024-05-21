.class public final synthetic Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/Window;

.field public final synthetic f$1:Landroid/view/Window$Callback;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;Landroid/view/Window$Callback;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/Window;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$1:Landroid/view/Window$Callback;

    iput-object p3, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/Window;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$1:Landroid/view/Window$Callback;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v1, v2, p0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->lambda$registerForNextDraw$0(Landroid/view/Window;Landroid/view/Window$Callback;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    return-void
.end method
