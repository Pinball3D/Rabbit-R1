.class Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;
.super Ljava/lang/Object;
.source "LegacyPreviewScalingStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->getBestPreviewSize(Ljava/util/List;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

.field final synthetic val$desired:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lcom/journeyapps/barcodescanner/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    .line 47
    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 48
    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lcom/journeyapps/barcodescanner/Size;

    .line 49
    invoke-static {p2, p0}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->scale(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    .line 50
    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr p0, v1

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p0, :cond_2

    return v2

    :cond_2
    if-gez v0, :cond_3

    if-gez p0, :cond_3

    .line 63
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p0

    return p0

    :cond_3
    if-lez v0, :cond_4

    if-lez p0, :cond_4

    .line 66
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_4
    if-gez v0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    check-cast p2, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->compare(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I

    move-result p0

    return p0
.end method
