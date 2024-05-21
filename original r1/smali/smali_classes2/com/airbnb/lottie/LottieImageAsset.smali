.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "LottieImageAsset.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyWithScale(F)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 7

    .line 78
    new-instance v6, Lcom/airbnb/lottie/LottieImageAsset;

    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    iget p1, v6, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iget v0, v6, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    const/4 v1, 0x1

    .line 80
    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 81
    invoke-virtual {v6, p0}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v6
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    return p0
.end method

.method public hasBitmap()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    const-string v1, "data:"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    const-string v0, "base64,"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
