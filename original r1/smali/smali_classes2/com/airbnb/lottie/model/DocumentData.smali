.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public baselineShift:F

.field public boxPosition:Landroid/graphics/PointF;

.field public boxSize:Landroid/graphics/PointF;

.field public color:I

.field public fontName:Ljava/lang/String;

.field public justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public lineHeight:F

.field public size:F

.field public strokeColor:I

.field public strokeOverFill:Z

.field public strokeWidth:F

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual/range {p0 .. p13}, Lcom/airbnb/lottie/model/DocumentData;->set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 69
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 71
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v0, p0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iput-object p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iput p7, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    iput-object p12, p0, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iput-object p13, p0, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    return-void
.end method
