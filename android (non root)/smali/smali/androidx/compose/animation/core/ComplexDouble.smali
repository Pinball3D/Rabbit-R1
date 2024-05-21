.class public final Landroidx/compose/animation/core/ComplexDouble;
.super Ljava/lang/Object;
.source "ComplexDouble.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComplexDouble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n1#1,112:1\n35#1,2:113\n66#1,3:115\n40#1,3:118\n*S KotlinDebug\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n46#1:113,2\n50#1:115,3\n50#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000b\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c2\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0011\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003H\u0086\nJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0011\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0086\nJ\u0011\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0086\nJ\u0011\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0086\nJ\u0011\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003H\u0086\nJ\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0000H\u0086\nR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/animation/core/ComplexDouble;",
        "",
        "_real",
        "",
        "_imaginary",
        "(DD)V",
        "imaginary",
        "getImaginary",
        "()D",
        "real",
        "getReal",
        "component1",
        "component2",
        "copy",
        "div",
        "other",
        "equals",
        "",
        "hashCode",
        "",
        "minus",
        "plus",
        "times",
        "toString",
        "",
        "unaryMinus",
        "animation-core_release"
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
.field private _imaginary:D

.field private _real:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    iput-wide p3, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    return-void
.end method

.method public static final synthetic access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D
    .locals 2

    .line 24
    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    return-wide v0
.end method

.method public static final synthetic access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D
    .locals 2

    .line 24
    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    return-wide v0
.end method

.method public static final synthetic access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V
    .locals 0

    .line 24
    iput-wide p1, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    return-void
.end method

.method public static final synthetic access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V
    .locals 0

    .line 24
    iput-wide p1, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    return-void
.end method

.method private final component1()D
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    return-wide v0
.end method

.method private final component2()D
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    return-wide v0
.end method

.method public static synthetic copy$default(Landroidx/compose/animation/core/ComplexDouble;DDILjava/lang/Object;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/ComplexDouble;->copy(DD)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(DD)Landroidx/compose/animation/core/ComplexDouble;
    .locals 0

    new-instance p0, Landroidx/compose/animation/core/ComplexDouble;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    return-object p0
.end method

.method public final div(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    .line 72
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    div-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 73
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    div-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/core/ComplexDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/animation/core/ComplexDouble;

    iget-wide v3, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    iget-wide v5, p1, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    iget-wide p0, p1, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getImaginary()D
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    return-wide v0
.end method

.method public final getReal()D
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final minus(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    neg-double p1, p1

    .line 113
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public final minus(Landroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    const/4 v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 116
    invoke-static {p1}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 118
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 119
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public final plus(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    .line 35
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public final plus(Landroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 41
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public final times(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    .line 54
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 55
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public final times(Landroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 61
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComplexDouble(_real="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/animation/core/ComplexDouble;->_real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _imaginary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/animation/core/ComplexDouble;->_imaginary:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unaryMinus()Landroidx/compose/animation/core/ComplexDouble;
    .locals 4

    .line 66
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    const/4 v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 67
    invoke-static {p0}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p0
.end method
