.class public Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;
.super Ljava/lang/Object;
.source "DecoderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private decoder:Lcom/journeyapps/barcodescanner/Decoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_0
    return-void
.end method

.method public getDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-object p0
.end method

.method public setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-void
.end method
