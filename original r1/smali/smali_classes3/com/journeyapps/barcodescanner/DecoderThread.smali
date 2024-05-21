.class public Lcom/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source "DecoderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecoderThread"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final callback:Landroid/os/Handler$Callback;

.field private cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private cropRect:Landroid/graphics/Rect;

.field private decoder:Lcom/journeyapps/barcodescanner/Decoder;

.field private handler:Landroid/os/Handler;

.field private final previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private resultHandler:Landroid/os/Handler;

.field private running:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    .line 101
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 48
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->decode(Lcom/journeyapps/barcodescanner/SourceData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    return p0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private decode(Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 8

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/SourceData;->setCropRect(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 146
    invoke-virtual {v3, v2}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found barcode in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {v0, v2, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 155
    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 162
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 167
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Decoder;->getPossibleResultPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->transformResultPoints(Ljava/util/List;Lcom/journeyapps/barcodescanner/SourceData;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 168
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method private requestNextPreview()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 128
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method


# virtual methods
.method protected createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/SourceData;->createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p0

    return-object p0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-object p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-void
.end method

.method public start()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 83
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 94
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
