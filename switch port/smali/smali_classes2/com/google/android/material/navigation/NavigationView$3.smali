.class Lcom/google/android/material/navigation/NavigationView$3;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1069
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1070
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1071
    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->isTopInsetScrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1076
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    aget v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1077
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawLeftInsetForeground(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1079
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1081
    invoke-static {v0}, Lcom/google/android/material/internal/WindowUtils;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1083
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v5}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v5

    aget v5, v5, v1

    if-ne v4, v5, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v2

    .line 1085
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 1087
    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->isBottomInsetScrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    .line 1086
    :goto_6
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 1092
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v4}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v0, v4, :cond_8

    .line 1093
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    if-ne v0, v3, :cond_7

    goto :goto_7

    :cond_7
    move v1, v2

    :cond_8
    :goto_7
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 1095
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawRightInsetForeground(Z)V

    :cond_9
    return-void
.end method
