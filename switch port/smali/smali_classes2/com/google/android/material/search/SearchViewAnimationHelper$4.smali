.class Lcom/google/android/material/search/SearchViewAnimationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationTranslate()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 239
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 247
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 248
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 249
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 251
    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 242
    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method
