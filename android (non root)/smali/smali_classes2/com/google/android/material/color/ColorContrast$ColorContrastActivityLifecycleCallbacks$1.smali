.class Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ColorContrast.java"

# interfaces
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContrastChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    .line 187
    invoke-static {p0}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->access$000(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    return-void
.end method
