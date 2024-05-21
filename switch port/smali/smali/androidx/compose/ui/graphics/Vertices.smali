.class public final Landroidx/compose/ui/graphics/Vertices;
.super Ljava/lang/Object;
.source "Vertices.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVertices.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vertices.kt\nandroidx/compose/ui/graphics/Vertices\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,75:1\n101#2,2:76\n33#2,6:78\n103#2:84\n*S KotlinDebug\n*F\n+ 1 Vertices.kt\nandroidx/compose/ui/graphics/Vertices\n*L\n42#1:76,2\n42#1:78,6\n42#1:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\n\u0018\u00002\u00020\u0001BH\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010\u001a\u001a\u00020\r2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005H\u0002\u00f8\u0001\u0000J\u0019\u0010\u001b\u001a\u00020\u00132\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00f8\u0001\u0000R\u0011\u0010\u0008\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Vertices;",
        "",
        "vertexMode",
        "Landroidx/compose/ui/graphics/VertexMode;",
        "positions",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "textureCoordinates",
        "colors",
        "Landroidx/compose/ui/graphics/Color;",
        "indices",
        "",
        "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "getColors",
        "()[I",
        "",
        "getIndices",
        "()[S",
        "",
        "getPositions",
        "()[F",
        "getTextureCoordinates",
        "getVertexMode-c2xauaI",
        "()I",
        "I",
        "encodeColorList",
        "encodePointList",
        "points",
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
.field private final colors:[I

.field private final indices:[S

.field private final positions:[F

.field private final textureCoordinates:[F

.field private final vertexMode:I


# direct methods
.method private constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textureCoordinates"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/Vertices;->vertexMode:I

    .line 37
    new-instance p1, Landroidx/compose/ui/graphics/Vertices$outOfBounds$1;

    invoke-direct {p1, p2}, Landroidx/compose/ui/graphics/Vertices$outOfBounds$1;-><init>(Ljava/util/List;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 38
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 40
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 79
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 77
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "indices values must be valid indices in the positions list."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/Vertices;->encodePointList(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->positions:[F

    .line 49
    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/Vertices;->encodePointList(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->textureCoordinates:[F

    .line 50
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/Vertices;->encodeColorList(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->colors:[I

    .line 51
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [S

    :goto_1
    if-ge v1, p1, :cond_2

    .line 53
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    int-to-short p3, p3

    aput-short p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object p2, p0, Landroidx/compose/ui/graphics/Vertices;->indices:[S

    return-void

    .line 41
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positions and colors lengths must match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positions and textureCoordinates lengths must match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/Vertices;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final encodeColorList(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)[I"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final encodePointList(Ljava/util/List;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)[F"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 66
    div-int/lit8 v2, v1, 0x2

    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    .line 68
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    .line 69
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getColors()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Vertices;->colors:[I

    return-object p0
.end method

.method public final getIndices()[S
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Vertices;->indices:[S

    return-object p0
.end method

.method public final getPositions()[F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Vertices;->positions:[F

    return-object p0
.end method

.method public final getTextureCoordinates()[F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Vertices;->textureCoordinates:[F

    return-object p0
.end method

.method public final getVertexMode-c2xauaI()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/Vertices;->vertexMode:I

    return p0
.end method
