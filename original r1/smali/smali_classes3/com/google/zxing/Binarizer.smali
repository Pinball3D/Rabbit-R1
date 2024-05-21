.class public abstract Lcom/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final source:Lcom/google/zxing/LuminanceSource;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public abstract createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
.end method

.method public abstract getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getLuminanceSource()Lcom/google/zxing/LuminanceSource;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    .line 80
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result p0

    return p0
.end method
