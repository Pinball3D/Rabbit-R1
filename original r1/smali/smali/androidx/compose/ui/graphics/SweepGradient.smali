.class public final Landroidx/compose/ui/graphics/SweepGradient;
.super Landroidx/compose/ui/graphics/ShaderBrush;
.source "Brush.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B2\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010\u000b\u001a\u00060\u000cj\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/SweepGradient;",
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "center",
        "Landroidx/compose/ui/geometry/Offset;",
        "colors",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "stops",
        "",
        "(JLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "createShader",
        "Landroid/graphics/Shader;",
        "Landroidx/compose/ui/graphics/Shader;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "createShader-uvyYCjk",
        "(J)Landroid/graphics/Shader;",
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
.field private final center:J

.field private final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Landroidx/compose/ui/graphics/ShaderBrush;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    iput-object p3, p0, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 583
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/SweepGradient;-><init>(JLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/SweepGradient;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createShader-uvyYCjk(J)Landroid/graphics/Shader;
    .locals 4

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 591
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide p1

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 595
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    :goto_0
    iget-wide v2, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 596
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpg-float v1, v2, v1

    if-nez v1, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    .line 594
    :goto_1
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p1

    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    iget-object p0, p0, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    .line 590
    invoke-static {p1, p2, v0, p0}, Landroidx/compose/ui/graphics/ShaderKt;->SweepGradientShader-9KIMszo(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 605
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/SweepGradient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 607
    check-cast p1, Landroidx/compose/ui/graphics/SweepGradient;

    iget-wide v5, p1, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    .line 608
    iget-object v3, p1, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    .line 609
    iget-object p1, p1, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 615
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    .line 616
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    .line 622
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "center="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/graphics/SweepGradient;->center:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 623
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SweepGradient("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/SweepGradient;->colors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/SweepGradient;->stops:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
