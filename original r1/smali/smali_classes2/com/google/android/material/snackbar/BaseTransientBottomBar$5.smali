.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/snackbar/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4

    .line 765
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v3, 0x1

    .line 766
    invoke-virtual {v1, v3, p1, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 765
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 760
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
