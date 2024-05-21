.class public Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayConfiguration"


# instance fields
.field private center:Z

.field private previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

.field private rotation:I

.field private viewfinderSize:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->center:Z

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    return-void
.end method

.method public constructor <init>(ILcom/journeyapps/barcodescanner/Size;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->center:Z

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    return-void
.end method


# virtual methods
.method public getBestPreviewSize(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;Z)",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getDesiredPreviewSize(Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p2

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0
.end method

.method public getDesiredPreviewSize(Z)Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/Size;->rotate()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getPreviewScalingStrategy()Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->rotation:I

    return p0
.end method

.method public getViewfinderSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    return-object p0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->viewfinderSize:Lcom/journeyapps/barcodescanner/Size;

    .line 96
    invoke-virtual {v0, p1, p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public setPreviewScalingStrategy(Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->previewScalingStrategy:Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-void
.end method
