.class Lcom/google/android/material/bottomappbar/BottomAppBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 254
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 261
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$000(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 262
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$300(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V

    :cond_0
    return-void
.end method
