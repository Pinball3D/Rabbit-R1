.class Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;
.super Lcom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform;

.field final synthetic val$drawingView:Landroid/view/View;

.field final synthetic val$endView:Landroid/view/View;

.field final synthetic val$startView:Landroid/view/View;

.field final synthetic val$transitionDrawable:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Landroid/view/View;

    .line 981
    invoke-direct {p0}, Lcom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 994
    invoke-virtual {p1, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 995
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->access$300(Lcom/google/android/material/transition/platform/MaterialContainerTransform;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1000
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Landroid/view/View;

    .line 1001
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Landroid/view/View;

    .line 1004
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-interface {p1, p0}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Landroid/view/View;

    .line 985
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Landroid/view/View;

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Landroid/view/View;

    .line 989
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
