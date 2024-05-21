.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;
.super Ljava/lang/Object;
.source "ViewBounds.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0016\u001a\u00020\u0017J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003J\u000e\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010&\u001a\u00020\"J\u0008\u0010\'\u001a\u00020(H\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\t\u00a8\u0006)"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(IIII)V",
        "getBottom",
        "()I",
        "setBottom",
        "(I)V",
        "height",
        "getHeight",
        "getLeft",
        "setLeft",
        "getRight",
        "setRight",
        "getTop",
        "setTop",
        "width",
        "getWidth",
        "asRect",
        "Landroid/graphics/Rect;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "offsetHorizontal",
        "",
        "dx",
        "offsetVertical",
        "dy",
        "setEmpty",
        "toString",
        "",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    iput p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 24
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;IIIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->copy(IIII)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asRect()Landroid/graphics/Rect;
    .locals 4

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    iget v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    iget v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return p0
.end method

.method public final copy(IIII)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;
    .locals 0

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    iget p1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBottom()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return p0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    return p0
.end method

.method public final getRight()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    return p0
.end method

.method public final getTop()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    return p0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final offsetHorizontal(I)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    return-void
.end method

.method public final offsetVertical(I)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return-void
.end method

.method public final setBottom(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return-void
.end method

.method public final setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    return-void
.end method

.method public final setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    return-void
.end method

.method public final setRight(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    return-void
.end method

.method public final setTop(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewBounds(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getHeight()I

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getWidth()I

    move-result p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
