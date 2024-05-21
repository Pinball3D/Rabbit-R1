.class public Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "LegacyPreviewScalingStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyPreviewScalingStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method public static scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 6

    .line 98
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 101
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v3, v1}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    .line 103
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 117
    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v1, v3}, Lcom/journeyapps/barcodescanner/Size;->scale(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v4

    .line 120
    invoke-virtual {p1, v4}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 121
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    move-object p0, v4

    goto :goto_0
.end method


# virtual methods
.method public getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;",
            "Lcom/journeyapps/barcodescanner/Size;",
            ")",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/journeyapps/barcodescanner/Size;

    return-object p0

    .line 44
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;

    invoke-direct {v1, p0, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Viewfinder size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Preview in order of preference: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/journeyapps/barcodescanner/Size;

    return-object p0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 4

    .line 147
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->TAG:Ljava/lang/String;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preview: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; Scaled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; Want: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v0, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 151
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 153
    new-instance p2, Landroid/graphics/Rect;

    neg-int v1, p1

    neg-int v2, v0

    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v3, p1

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr p0, v0

    invoke-direct {p2, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method
