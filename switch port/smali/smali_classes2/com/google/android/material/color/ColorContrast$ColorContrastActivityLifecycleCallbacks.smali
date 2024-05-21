.class Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ColorContrast.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorContrast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorContrastActivityLifecycleCallbacks"
.end annotation


# instance fields
.field private final activitiesInStack:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

.field private contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorContrastOptions;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)Ljava/util/Set;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    .line 226
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v0, "uimode"

    .line 229
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    .line 230
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 231
    invoke-virtual {p1, v0}, Landroid/app/UiModeManager;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "uimode"

    .line 181
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    .line 182
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;-><init>(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 193
    invoke-virtual {p2, v0, v1}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    .line 198
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

    .line 200
    invoke-static {p1, p0}, Lcom/google/android/material/color/ColorContrast;->applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
