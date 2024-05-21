.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;
.super Ljava/lang/Object;
.source "ScrollAlignmentQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingAlignment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;",
        "",
        "view",
        "Landroid/view/View;",
        "childView",
        "sign",
        "",
        "(Landroid/view/View;Landroid/view/View;I)V",
        "getChildView",
        "()Landroid/view/View;",
        "getSign",
        "()I",
        "getView",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final childView:Landroid/view/View;

.field private final sign:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;Landroid/view/View;Landroid/view/View;IILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->copy(Landroid/view/View;Landroid/view/View;I)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    return-object p0
.end method

.method public final component2()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    return p0
.end method

.method public final copy(Landroid/view/View;Landroid/view/View;I)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;-><init>(Landroid/view/View;Landroid/view/View;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    iget-object v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    iget-object v3, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    iget p1, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChildView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    return-object p0
.end method

.method public final getSign()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingAlignment(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", childView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->sign:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
