.class final Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
.super Ljava/lang/Object;
.source "ExpandedRow.java"


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rowNumber:I

.field private final wasReversed:Z


# direct methods
.method constructor <init>(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;IZ)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    iput p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->rowNumber:I

    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->wasReversed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 60
    instance-of v0, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    check-cast p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    .line 64
    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->wasReversed:Z

    iget-boolean p1, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->wasReversed:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method getPairs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    return-object p0
.end method

.method getRowNumber()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->rowNumber:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->wasReversed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method isEquivalent(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    .line 47
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->pairs:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
