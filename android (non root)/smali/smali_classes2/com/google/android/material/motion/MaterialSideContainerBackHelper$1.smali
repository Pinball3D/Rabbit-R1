.class Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaterialSideContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->finishBackProgress(Landroidx/activity/BackEventCompat;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

.field final synthetic val$gravity:I

.field final synthetic val$leftSwipeEdge:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/motion/MaterialSideContainerBackHelper;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iput-boolean p2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$leftSwipeEdge:Z

    iput p3, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$gravity:I

    .line 146
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    .line 149
    iget-object p1, p1, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iget-boolean v1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$leftSwipeEdge:Z

    iget p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$gravity:I

    .line 150
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->updateBackProgress(FZI)V

    return-void
.end method
