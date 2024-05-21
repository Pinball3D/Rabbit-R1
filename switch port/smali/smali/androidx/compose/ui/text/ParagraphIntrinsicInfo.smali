.class public final Landroidx/compose/ui/text/ParagraphIntrinsicInfo;
.super Ljava/lang/Object;
.source "MultiParagraphIntrinsics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/text/ParagraphIntrinsicInfo;",
        "",
        "intrinsics",
        "Landroidx/compose/ui/text/ParagraphIntrinsics;",
        "startIndex",
        "",
        "endIndex",
        "(Landroidx/compose/ui/text/ParagraphIntrinsics;II)V",
        "getEndIndex",
        "()I",
        "getIntrinsics",
        "()Landroidx/compose/ui/text/ParagraphIntrinsics;",
        "getStartIndex",
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
.field private final endIndex:I

.field private final intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/ParagraphIntrinsics;II)V
    .locals 1

    const-string v0, "intrinsics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    iput p2, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    iput p3, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/text/ParagraphIntrinsicInfo;Landroidx/compose/ui/text/ParagraphIntrinsics;IIILjava/lang/Object;)Landroidx/compose/ui/text/ParagraphIntrinsicInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->copy(Landroidx/compose/ui/text/ParagraphIntrinsics;II)Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/text/ParagraphIntrinsics;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    return p0
.end method

.method public final copy(Landroidx/compose/ui/text/ParagraphIntrinsics;II)Landroidx/compose/ui/text/ParagraphIntrinsicInfo;
    .locals 0

    const-string p0, "intrinsics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/ParagraphIntrinsics;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    iget p1, p1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEndIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    return p0
.end method

.method public final getIntrinsics()Landroidx/compose/ui/text/ParagraphIntrinsics;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    return-object p0
.end method

.method public final getStartIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParagraphIntrinsicInfo(intrinsics="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
