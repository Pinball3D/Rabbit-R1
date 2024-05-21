.class Landroidx/transition/GhostViewPort$1;
.super Ljava/lang/Object;
.source "GhostViewPort.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/GhostViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/GhostViewPort;


# direct methods
.method constructor <init>(Landroidx/transition/GhostViewPort;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 56
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 57
    iget-object v0, v0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    iget-object v0, v0, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 58
    iget-object v0, v0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 59
    iget-object v0, v0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/transition/GhostViewPort$1;->this$0:Landroidx/transition/GhostViewPort;

    .line 61
    iput-object v1, p0, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
