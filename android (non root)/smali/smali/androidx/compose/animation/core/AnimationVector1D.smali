.class public final Landroidx/compose/animation/core/AnimationVector1D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "AnimationVectors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0090\u0002\u00a2\u0006\u0002\u0008\u0014J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\r\u0010\u0016\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008\u0017J\r\u0010\u0018\u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008\u001aJ\u001e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0090\u0002\u00a2\u0006\u0002\u0008\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0090D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0004\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/animation/core/AnimationVector;",
        "initVal",
        "",
        "(F)V",
        "size",
        "",
        "getSize$animation_core_release",
        "()I",
        "<set-?>",
        "value",
        "getValue",
        "()F",
        "setValue$animation_core_release",
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

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 135
    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector1D;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    iget p1, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

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
    .locals 0

    if-nez p1, :cond_0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSize$animation_core_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->size:I

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 137
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    .line 113
    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object p0
.end method

.method public bridge synthetic newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    return-object p0
.end method

.method public reset$animation_core_release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method

.method public set$animation_core_release(IF)V
    .locals 0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    :cond_0
    return-void
.end method

.method public final setValue$animation_core_release(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector1D: value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
