.class Landroidx/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/ChangeBounds$8;->this$0:Landroidx/transition/ChangeBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    iput p4, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    iput p5, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    iput p6, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    iput p7, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 370
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget-object v0, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 381
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget v0, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    iget v1, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    iget v2, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    iget p0, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 382
    invoke-static {p1, v0, v1, v2, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
