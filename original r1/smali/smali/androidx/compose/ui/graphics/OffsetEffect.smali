.class public final Landroidx/compose/ui/graphics/OffsetEffect;
.super Landroidx/compose/ui/graphics/RenderEffect;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001a\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0007\u001a\u00020\u0008H\u0015J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0019\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/OffsetEffect;",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "renderEffect",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "(Landroidx/compose/ui/graphics/RenderEffect;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "createRenderEffect",
        "Landroid/graphics/RenderEffect;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ui-graphics_release"
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
.field private final offset:J

.field private final renderEffect:Landroidx/compose/ui/graphics/RenderEffect;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/RenderEffect;J)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/RenderEffect;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/RenderEffect;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/OffsetEffect;-><init>(Landroidx/compose/ui/graphics/RenderEffect;J)V

    return-void
.end method


# virtual methods
.method protected createRenderEffect()Landroid/graphics/RenderEffect;
    .locals 4

    .line 106
    sget-object v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    iget-wide v2, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->createOffsetEffect-Uv8p0NA(Landroidx/compose/ui/graphics/RenderEffect;J)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/OffsetEffect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 112
    check-cast p1, Landroidx/compose/ui/graphics/OffsetEffect;

    iget-object v3, p1, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 113
    iget-wide p0, p1, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/RenderEffect;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    .line 120
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetEffect(renderEffect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/OffsetEffect;->offset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
