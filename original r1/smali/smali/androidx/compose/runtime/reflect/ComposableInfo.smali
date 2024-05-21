.class public final Landroidx/compose/runtime/reflect/ComposableInfo;
.super Ljava/lang/Object;
.source "ComposableMethod.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/runtime/reflect/ComposableInfo;",
        "",
        "isComposable",
        "",
        "realParamsCount",
        "",
        "changedParams",
        "defaultParams",
        "(ZIII)V",
        "getChangedParams",
        "()I",
        "getDefaultParams",
        "()Z",
        "getRealParamsCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "runtime_release"
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
.field private final changedParams:I

.field private final defaultParams:I

.field private final isComposable:Z

.field private final realParamsCount:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    iput p2, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    iput p3, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    iput p4, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/runtime/reflect/ComposableInfo;ZIIIILjava/lang/Object;)Landroidx/compose/runtime/reflect/ComposableInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/reflect/ComposableInfo;->copy(ZIII)Landroidx/compose/runtime/reflect/ComposableInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    return p0
.end method

.method public final copy(ZIII)Landroidx/compose/runtime/reflect/ComposableInfo;
    .locals 0

    new-instance p0, Landroidx/compose/runtime/reflect/ComposableInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/reflect/ComposableInfo;-><init>(ZIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/runtime/reflect/ComposableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/runtime/reflect/ComposableInfo;

    iget-boolean v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    iget-boolean v3, p1, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    iget v3, p1, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    iget v3, p1, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    iget p1, p1, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChangedParams()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    return p0
.end method

.method public final getDefaultParams()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    return p0
.end method

.method public final getRealParamsCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isComposable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComposableInfo(isComposable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->isComposable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realParamsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->realParamsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changedParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->changedParams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/reflect/ComposableInfo;->defaultParams:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
