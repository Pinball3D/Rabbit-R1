.class public final Landroidx/compose/ui/graphics/vector/PathBuilder;
.super Ljava/lang/Object;
.source "PathBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010 \n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J>\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nJ>\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0000J6\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nJ6\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nJ\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\nJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\nJ\u0016\u0010(\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\n2\u0006\u0010)\u001a\u00020\nJ\u0016\u0010*\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u0016\u0010,\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\n2\u0006\u0010)\u001a\u00020\nJ\u0016\u0010-\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ&\u0010.\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ&\u0010/\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ&\u00100\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ&\u00101\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0016\u00102\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nJ\u0016\u00103\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u00104\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\nJ\u000e\u00105\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/PathBuilder;",
        "",
        "()V",
        "nodes",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "addNode",
        "node",
        "arcTo",
        "horizontalEllipseRadius",
        "",
        "verticalEllipseRadius",
        "theta",
        "isMoreThanHalf",
        "",
        "isPositiveArc",
        "x1",
        "y1",
        "arcToRelative",
        "a",
        "b",
        "dx1",
        "dy1",
        "close",
        "curveTo",
        "x2",
        "y2",
        "x3",
        "y3",
        "curveToRelative",
        "dx2",
        "dy2",
        "dx3",
        "dy3",
        "getNodes",
        "",
        "horizontalLineTo",
        "x",
        "horizontalLineToRelative",
        "dx",
        "lineTo",
        "y",
        "lineToRelative",
        "dy",
        "moveTo",
        "moveToRelative",
        "quadTo",
        "quadToRelative",
        "reflectiveCurveTo",
        "reflectiveCurveToRelative",
        "reflectiveQuadTo",
        "reflectiveQuadToRelative",
        "verticalLineTo",
        "verticalLineToRelative",
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
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    return-void
.end method

.method private final addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 110
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public final arcTo(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 9

    .line 88
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    move-object v0, p0

    .line 87
    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 9

    .line 107
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    move-object v0, p0

    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final close()Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 25
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 8

    .line 50
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 8

    .line 59
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final getNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    return-object p0
.end method

.method public final horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 35
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 37
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 31
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 33
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 27
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 29
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final quadTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 68
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final quadToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 71
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 62
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 65
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final reflectiveQuadTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 74
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final reflectiveQuadToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 77
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 39
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 41
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/graphics/vector/PathNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object p0

    return-object p0
.end method
