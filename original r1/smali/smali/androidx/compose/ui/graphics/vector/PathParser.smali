.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "PathParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n*L\n1#1,553:1\n130#1,6:554\n148#1,2:560\n*S KotlinDebug\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n*L\n113#1:554,6\n121#1:560,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J!\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0082\u0008J\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012J\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u0011\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0010H\u0082\u0008J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0010\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/PathParser;",
        "",
        "()V",
        "floatResult",
        "Landroidx/compose/ui/graphics/vector/FloatResult;",
        "nodeData",
        "",
        "nodes",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "addNodes",
        "",
        "cmd",
        "",
        "args",
        "count",
        "",
        "addPathNodes",
        "",
        "clear",
        "parsePathString",
        "pathData",
        "",
        "resizeNodeData",
        "dataCount",
        "toNodes",
        "toPath",
        "Landroidx/compose/ui/graphics/Path;",
        "target",
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
.field private final floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

.field private nodeData:[F

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
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 54
    new-instance v0, Landroidx/compose/ui/graphics/vector/FloatResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;-><init>(FZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    return-void
.end method

.method private final addNodes(C[FI)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 148
    invoke-static {p1, p0, p2, p3}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->addPathNodes(CLjava/util/List;[FI)V

    return-void
.end method

.method private final resizeNodeData(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 130
    array-length v1, v0

    if-lt p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 132
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 133
    array-length p0, v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, p0}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    :cond_0
    return-void
.end method

.method public static synthetic toPath$default(Landroidx/compose/ui/graphics/vector/PathParser;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 144
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addPathNodes(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/PathParser;"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 138
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 58
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final parsePathString(Ljava/lang/String;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 9

    const-string v0, "pathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_0

    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gtz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gtz v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    if-ge v2, v0, :cond_b

    :goto_3
    add-int/lit8 v5, v2, 0x1

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/lit8 v6, v2, 0x20

    add-int/lit8 v7, v6, -0x61

    add-int/lit8 v8, v6, -0x7a

    mul-int/2addr v7, v8

    if-gtz v7, :cond_2

    const/16 v7, 0x65

    if-eq v6, v7, :cond_2

    goto :goto_4

    :cond_2
    if-lt v5, v0, :cond_a

    move v2, v1

    :goto_4
    if-eqz v2, :cond_9

    or-int/lit8 v6, v2, 0x20

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_8

    move v4, v1

    :cond_3
    :goto_5
    if-ge v5, v0, :cond_4

    .line 104
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 109
    :cond_4
    sget-object v6, Landroidx/compose/ui/graphics/vector/FastFloatParser;->Companion:Landroidx/compose/ui/graphics/vector/FastFloatParser$Companion;

    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/PathParser;->floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

    invoke-virtual {v6, p1, v5, v0, v7}, Landroidx/compose/ui/graphics/vector/FastFloatParser$Companion;->nextFloat(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/FloatResult;)I

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathParser;->floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

    .line 111
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/FloatResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Landroidx/compose/ui/graphics/vector/PathParser;->floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

    .line 112
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/FloatResult;->getValue()F

    move-result v8

    aput v8, v6, v4

    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 554
    array-length v6, v4

    if-lt v7, v6, :cond_5

    mul-int/lit8 v6, v7, 0x2

    .line 556
    new-array v6, v6, [F

    iput-object v6, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 557
    array-length v8, v4

    invoke-static {v4, v6, v1, v1, v8}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    :cond_5
    move v4, v7

    :cond_6
    :goto_6
    if-ge v5, v0, :cond_7

    .line 117
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    if-ge v5, v0, :cond_8

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathParser;->floatResult:Landroidx/compose/ui/graphics/vector/FloatResult;

    .line 118
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/FloatResult;->isValid()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_8
    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 560
    invoke-static {v2, v7, v6, v4}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->addPathNodes(CLjava/util/List;[FI)V

    :cond_9
    move v2, v5

    goto :goto_2

    :cond_a
    move v2, v5

    goto :goto_3

    :cond_b
    return-object p0
.end method

.method public final toNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    return-object p0
.end method

.method public final toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 144
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method
