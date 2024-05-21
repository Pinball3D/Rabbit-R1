.class Lcom/google/android/material/search/SearchBarAnimationHelper$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field final synthetic val$searchBar:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$6;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$6;->val$searchBar:Lcom/google/android/material/search/SearchBar;

    .line 312
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$6;->val$searchBar:Lcom/google/android/material/search/SearchBar;

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$6;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 321
    invoke-static {p0, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->access$302(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$6;->val$searchBar:Lcom/google/android/material/search/SearchBar;

    .line 315
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->stopOnLoadAnimation()V

    return-void
.end method
