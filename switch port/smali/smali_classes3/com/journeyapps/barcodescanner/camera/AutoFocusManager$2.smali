.class Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->this$0:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAutoFocus$0$com-journeyapps-barcodescanner-camera-AutoFocusManager$2()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->this$0:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->access$302(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->this$0:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 69
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->access$400(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->this$0:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 67
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->access$200(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
