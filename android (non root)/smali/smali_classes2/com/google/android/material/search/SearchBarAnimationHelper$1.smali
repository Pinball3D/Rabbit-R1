.class Lcom/google/android/material/search/SearchBarAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 81
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 84
    new-instance p1, Lcom/google/android/material/search/SearchBarAnimationHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->access$000(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    return-void
.end method
