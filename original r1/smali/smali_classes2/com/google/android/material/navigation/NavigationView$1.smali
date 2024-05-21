.class Lcom/google/android/material/navigation/NavigationView$1;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationView;
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

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$1;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 155
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$1;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-ne p1, p0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/motion/MaterialBackOrchestrator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->stopListeningForBackCallbacks()V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$1;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-ne p1, p0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/motion/MaterialBackOrchestrator;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/material/navigation/NavigationView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
