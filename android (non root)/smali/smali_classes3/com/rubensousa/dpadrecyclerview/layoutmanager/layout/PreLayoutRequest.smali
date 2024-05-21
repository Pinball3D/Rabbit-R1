.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;
.super Ljava/lang/Object;
.source "PreLayoutRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\"\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\"\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\u00a8\u0006 "
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;",
        "",
        "()V",
        "<set-?>",
        "",
        "endOffset",
        "getEndOffset",
        "()I",
        "extraLayoutSpace",
        "getExtraLayoutSpace",
        "firstPosition",
        "getFirstPosition",
        "Landroid/view/View;",
        "firstView",
        "getFirstView",
        "()Landroid/view/View;",
        "lastPosition",
        "getLastPosition",
        "lastView",
        "getLastView",
        "startOffset",
        "getStartOffset",
        "clear",
        "",
        "reset",
        "firstPos",
        "lastPos",
        "toString",
        "",
        "updateOffsets",
        "decoratedStart",
        "decoratedEnd",
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
.field private endOffset:I

.field private extraLayoutSpace:I

.field private firstPosition:I

.field private firstView:Landroid/view/View;

.field private lastPosition:I

.field private lastView:Landroid/view/View;

.field private startOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstPosition:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastPosition:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->extraLayoutSpace:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    return-void
.end method

.method public final getEndOffset()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    return p0
.end method

.method public final getExtraLayoutSpace()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->extraLayoutSpace:I

    return p0
.end method

.method public final getFirstPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstPosition:I

    return p0
.end method

.method public final getFirstView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstView:Landroid/view/View;

    return-object p0
.end method

.method public final getLastPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastPosition:I

    return p0
.end method

.method public final getLastView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastView:Landroid/view/View;

    return-object p0
.end method

.method public final getStartOffset()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    return p0
.end method

.method public final reset(ILandroid/view/View;ILandroid/view/View;)V
    .locals 1

    const-string v0, "firstView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->clear()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstPosition:I

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastPosition:I

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstView:Landroid/view/View;

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastView:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreLayoutRequest(firstPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->firstPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->lastPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraLayoutSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->extraLayoutSpace:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateOffsets(II)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    .line 48
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->endOffset:I

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->startOffset:I

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-le p1, p2, :cond_0

    const/4 v0, 0x0

    sub-int/2addr p1, p2

    .line 51
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;->extraLayoutSpace:I

    :cond_0
    return-void
.end method
