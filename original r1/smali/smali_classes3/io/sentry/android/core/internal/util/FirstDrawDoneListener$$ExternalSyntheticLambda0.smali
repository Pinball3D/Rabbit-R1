.class public final synthetic Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->lambda$onDraw$1$io-sentry-android-core-internal-util-FirstDrawDoneListener(Landroid/view/View;)V

    return-void
.end method
