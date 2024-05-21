.class Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->this$0:Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 p1, 0x4

    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
