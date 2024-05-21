.class public Lcom/davemorrissey/labs/subscaleview/ImageViewState;
.super Ljava/lang/Object;
.source "ImageViewState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final centerX:F

.field private final centerY:F

.field private final orientation:I

.field private final scale:F


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->scale:F

    .line 24
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerX:F

    .line 25
    iget p1, p2, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerY:F

    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->orientation:I

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 2

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerX:F

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->centerY:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->orientation:I

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->scale:F

    return p0
.end method
