.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/CameraPreview;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    }
.end annotation


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

.field private decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

.field private final resultCallback:Landroid/os/Handler$Callback;

.field private resultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 44
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 77
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 44
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 82
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 44
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    .line 87
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object p0
.end method

.method private createDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDefaultDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 116
    :cond_0
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;-><init>()V

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 119
    invoke-interface {p0, v1}, Lcom/journeyapps/barcodescanner/DecoderFactory;->createDecoder(Ljava/util/Map;)Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V

    return-object p0
.end method

.method private initialize()V
    .locals 2

    .line 91
    new-instance v0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 92
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultHandler:Landroid/os/Handler;

    return-void
.end method

.method private startDecoderThread()V
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 174
    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->isPreviewActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->getCameraInstance()Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDecoder()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->resultHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/DecoderThread;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 179
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->setCropRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 180
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->start()V

    :cond_0
    return-void
.end method

.method private stopDecoderThread()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    :cond_0
    return-void
.end method


# virtual methods
.method protected createDefaultDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .locals 0

    .line 168
    new-instance p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    return-object p0
.end method

.method public decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 155
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 142
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public getDecoderFactory()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    return-object p0
.end method

.method public pause()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    .line 206
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->pause()V

    return-void
.end method

.method protected previewStarted()V
    .locals 0

    .line 186
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->previewStarted()V

    .line 188
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->startDecoderThread()V

    return-void
.end method

.method public setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V
    .locals 0

    .line 104
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderFactory:Lcom/journeyapps/barcodescanner/DecoderFactory;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decoderThread:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->createDecoder()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V

    :cond_0
    return-void
.end method

.method public stopDecoding()V
    .locals 1

    .line 162
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->decodeMode:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 164
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoderThread()V

    return-void
.end method
