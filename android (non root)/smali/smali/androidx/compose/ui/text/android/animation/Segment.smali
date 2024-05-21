.class public final Landroidx/compose/ui/text/android/animation/Segment;
.super Ljava/lang/Object;
.source "SegmentBreaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/animation/Segment;",
        "",
        "startOffset",
        "",
        "endOffset",
        "left",
        "top",
        "right",
        "bottom",
        "(IIIIII)V",
        "getBottom",
        "()I",
        "getEndOffset",
        "getLeft",
        "getRight",
        "getStartOffset",
        "getTop",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bottom:I

.field private final endOffset:I

.field private final left:I

.field private final right:I

.field private final startOffset:I

.field private final top:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    iput p2, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    iput p3, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    iput p4, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    iput p5, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    iput p6, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/text/android/animation/Segment;IIIIIIILjava/lang/Object;)Landroidx/compose/ui/text/android/animation/Segment;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Landroidx/compose/ui/text/android/animation/Segment;->copy(IIIIII)Landroidx/compose/ui/text/android/animation/Segment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    return p0
.end method

.method public final copy(IIIIII)Landroidx/compose/ui/text/android/animation/Segment;
    .locals 7

    new-instance p0, Landroidx/compose/ui/text/android/animation/Segment;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/android/animation/Segment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/android/animation/Segment;

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    iget p1, p1, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBottom()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    return p0
.end method

.method public final getEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    return p0
.end method

.method public final getLeft()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    return p0
.end method

.method public final getRight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    return p0
.end method

.method public final getStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    return p0
.end method

.method public final getTop()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Segment(startOffset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
