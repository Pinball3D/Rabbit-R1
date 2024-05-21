.class public Lcom/journeyapps/barcodescanner/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iput p2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/journeyapps/barcodescanner/Size;)I
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int/2addr v0, p0

    .line 87
    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int/2addr p0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 108
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z
    .locals 2

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 78
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-gt v0, v1, :cond_0

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    add-int/2addr v0, p0

    return v0
.end method

.method public rotate()Lcom/journeyapps/barcodescanner/Size;
    .locals 2

    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-direct {v0, v1, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scale(II)Lcom/journeyapps/barcodescanner/Size;
    .locals 2

    .line 35
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int/2addr p0, p1

    div-int/2addr p0, p2

    invoke-direct {v0, v1, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 4

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 62
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v2, v0, v1

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v3, p1, p0

    if-gt v2, v3, :cond_0

    .line 64
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    mul-int/2addr p0, p1

    div-int/2addr p0, v0

    invoke-direct {v1, p1, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v1

    .line 67
    :cond_0
    new-instance p1, Lcom/journeyapps/barcodescanner/Size;

    mul-int/2addr v0, v1

    div-int/2addr v0, p0

    invoke-direct {p1, v0, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object p1
.end method

.method public scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .locals 4

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 46
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v2, v0, v1

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v3, p1, p0

    if-lt v2, v3, :cond_0

    .line 48
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    mul-int/2addr p0, p1

    div-int/2addr p0, v0

    invoke-direct {v1, p1, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v1

    .line 51
    :cond_0
    new-instance p1, Lcom/journeyapps/barcodescanner/Size;

    mul-int/2addr v0, v1

    div-int/2addr v0, p0

    invoke-direct {p1, v0, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
