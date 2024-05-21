.class public abstract Landroidx/compose/foundation/shape/CornerBasedShape;
.super Ljava/lang/Object;
.source "CornerBasedShape.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0003J0\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H&J+\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018JE\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0014H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/shape/CornerBasedShape;",
        "Landroidx/compose/ui/graphics/Shape;",
        "topStart",
        "Landroidx/compose/foundation/shape/CornerSize;",
        "topEnd",
        "bottomEnd",
        "bottomStart",
        "(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V",
        "getBottomEnd",
        "()Landroidx/compose/foundation/shape/CornerSize;",
        "getBottomStart",
        "getTopEnd",
        "getTopStart",
        "copy",
        "all",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createOutline-Pq9zytI",
        "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;",
        "",
        "createOutline-LjSzlW0",
        "(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

.field private final bottomStart:Landroidx/compose/foundation/shape/CornerSize;

.field private final topEnd:Landroidx/compose/foundation/shape/CornerSize;

.field private final topStart:Landroidx/compose/foundation/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V
    .locals 1

    const-string/jumbo v0, "topStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "topEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomEnd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomStart"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p2, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p3, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    iput-object p4, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;ILjava/lang/Object;)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    if-nez p6, :cond_4

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 104
    iget-object p1, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 105
    iget-object p2, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 106
    iget-object p3, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 107
    iget-object p4, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 103
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 1

    const-string v0, "all"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;
.end method

.method public abstract createOutline-LjSzlW0(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
.end method

.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 11

    const-string v4, "layoutDirection"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "density"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 47
    invoke-interface {v4, p1, p2, p4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 48
    invoke-interface {v5, p1, p2, p4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 49
    invoke-interface {v6, p1, p2, p4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v6

    iget-object v8, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 50
    invoke-interface {v8, p1, p2, p4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result v3

    .line 51
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result v8

    add-float v9, v4, v3

    cmpl-float v10, v9, v8

    if-lez v10, :cond_0

    div-float v9, v8, v9

    mul-float/2addr v4, v9

    mul-float/2addr v3, v9

    :cond_0
    move v9, v3

    move v3, v4

    add-float v4, v5, v6

    cmpl-float v10, v4, v8

    if-lez v10, :cond_1

    div-float/2addr v8, v4

    mul-float/2addr v5, v8

    mul-float/2addr v6, v8

    :cond_1
    move v4, v5

    move v5, v6

    const/4 v6, 0x0

    cmpl-float v8, v3, v6

    if-ltz v8, :cond_2

    cmpl-float v8, v4, v6

    if-ltz v8, :cond_2

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_2

    cmpl-float v6, v9, v6

    if-ltz v6, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move v6, v9

    move-object v7, p3

    .line 66
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/shape/CornerBasedShape;->createOutline-LjSzlW0(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    return-object v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corner size in Px can\'t be negative(topStart = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getBottomStart()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getTopEnd()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getTopStart()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method
