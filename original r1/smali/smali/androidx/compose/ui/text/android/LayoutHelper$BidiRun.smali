.class final Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
.super Ljava/lang/Object;
.source "LayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/android/LayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BidiRun"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;",
        "",
        "start",
        "",
        "end",
        "isRtl",
        "",
        "(IIZ)V",
        "getEnd",
        "()I",
        "()Z",
        "getStart",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field private final end:I

.field private final isRtl:Z

.field private final start:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    iput p2, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    iput-boolean p3, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;IIZILjava/lang/Object;)Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->copy(IIZ)Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    return p0
.end method

.method public final copy(IIZ)Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .locals 0

    new-instance p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    iget v1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    iget v3, p1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    iget v3, p1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    iget-boolean p1, p1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnd()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    return p0
.end method

.method public final getStart()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isRtl()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BidiRun(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
