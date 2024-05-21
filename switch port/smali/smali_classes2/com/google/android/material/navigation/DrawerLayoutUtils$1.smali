.class Lcom/google/android/material/navigation/DrawerLayoutUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerLayoutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/DrawerLayoutUtils;->getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field final synthetic val$drawerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p2, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerView:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerView:Landroid/view/View;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/high16 p1, -0x67000000

    .line 69
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void
.end method
