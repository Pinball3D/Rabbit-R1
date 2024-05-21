.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startFadeOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;->val$event:I

    .line 970
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;->val$event:I

    .line 973
    invoke-virtual {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
