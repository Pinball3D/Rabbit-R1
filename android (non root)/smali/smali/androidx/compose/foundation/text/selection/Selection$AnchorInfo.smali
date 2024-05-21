.class public final Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
.super Ljava/lang/Object;
.source "Selection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnchorInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "",
        "direction",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "offset",
        "",
        "selectableId",
        "",
        "(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V",
        "getDirection",
        "()Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "getOffset",
        "()I",
        "getSelectableId",
        "()J",
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
        "foundation_release"
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
.field private final direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field private final offset:I

.field private final selectableId:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput p2, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    iput-wide p3, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/ui/text/style/ResolvedTextDirection;IJILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->copy(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    return p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    return-wide v0
.end method

.method public final copy(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 0

    const-string p0, "direction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-object v3, p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    iget v3, p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    iget-wide p0, p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-object p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    return p0
.end method

.method public final getSelectableId()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/ResolvedTextDirection;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo(direction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
