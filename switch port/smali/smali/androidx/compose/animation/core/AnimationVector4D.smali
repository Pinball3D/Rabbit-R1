.class public final Landroidx/compose/animation/core/AnimationVector4D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "AnimationVectors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0016\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\tH\u0090\u0002\u00a2\u0006\u0002\u0008\u001dJ\u0008\u0010\u001e\u001a\u00020\tH\u0016J\r\u0010\u001f\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008 J\r\u0010!\u001a\u00020\"H\u0010\u00a2\u0006\u0002\u0008#J\u001e\u0010$\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0003H\u0090\u0002\u00a2\u0006\u0002\u0008&J\u0008\u0010\'\u001a\u00020(H\u0016R\u0014\u0010\u0008\u001a\u00020\tX\u0090D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R$\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/animation/core/AnimationVector4D;",
        "Landroidx/compose/animation/core/AnimationVector;",
        "v1",
        "",
        "v2",
        "v3",
        "v4",
        "(FFFF)V",
        "size",
        "",
        "getSize$animation_core_release",
        "()I",
        "<set-?>",
        "getV1",
        "()F",
        "setV1$animation_core_release",
        "(F)V",
        "getV2",
        "setV2$animation_core_release",
        "getV3",
        "setV3$animation_core_release",
        "getV4",
        "setV4$animation_core_release",
        "equals",
        "",
        "other",
        "",
        "get",
        "index",
        "get$animation_core_release",
        "hashCode",
        "newVector",
        "newVector$animation_core_release",
        "reset",
        "",
        "reset$animation_core_release",
        "set",
        "value",
        "set$animation_core_release",
        "toString",
        "",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final size:I

.field private v1:F

.field private v2:F

.field private v3:F

.field private v4:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iput p3, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iput p4, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    const/4 p1, 0x4

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 327
    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector4D;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 329
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 330
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 331
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get$animation_core_release(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    goto :goto_0

    :cond_3
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    :goto_0
    return p0
.end method

.method public getSize$animation_core_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->size:I

    return p0
.end method

.method public final getV1()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    return p0
.end method

.method public final getV2()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    return p0
.end method

.method public final getV3()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    return p0
.end method

.method public final getV4()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 334
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector4D;
    .locals 1

    .line 299
    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    return-object p0
.end method

.method public bridge synthetic newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    .line 266
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector4D;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector4D;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public reset$animation_core_release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    return-void
.end method

.method public set$animation_core_release(IF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    goto :goto_0

    :cond_1
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    goto :goto_0

    :cond_2
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    goto :goto_0

    :cond_3
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    :goto_0
    return-void
.end method

.method public final setV1$animation_core_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    return-void
.end method

.method public final setV2$animation_core_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    return-void
.end method

.method public final setV3$animation_core_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    return-void
.end method

.method public final setV4$animation_core_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector4D: v1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
