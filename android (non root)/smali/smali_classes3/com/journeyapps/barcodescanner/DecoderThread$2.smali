.class Lcom/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 108
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 109
    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 111
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object p0

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 118
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 119
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 121
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object p0

    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
