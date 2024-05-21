.class final Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;
.super Lkotlin/jvm/internal/Lambda;
.source "VectorCompose.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $fill:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $fillAlpha:F

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $pathData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pathFillType:I

.field final synthetic $stroke:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $strokeAlpha:F

.field final synthetic $strokeLineCap:I

.field final synthetic $strokeLineJoin:I

.field final synthetic $strokeLineMiter:F

.field final synthetic $strokeLineWidth:F

.field final synthetic $trimPathEnd:F

.field final synthetic $trimPathOffset:F

.field final synthetic $trimPathStart:F


# direct methods
.method constructor <init>(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFFIII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$pathData:Ljava/util/List;

    move v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$pathFillType:I

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$name:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$fill:Landroidx/compose/ui/graphics/Brush;

    move v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$fillAlpha:F

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$stroke:Landroidx/compose/ui/graphics/Brush;

    move v1, p7

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeAlpha:F

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineWidth:F

    move v1, p9

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineCap:I

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineJoin:I

    move v1, p11

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineMiter:F

    move v1, p12

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathStart:F

    move v1, p13

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathEnd:F

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathOffset:F

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$changed1:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$pathData:Ljava/util/List;

    iget v2, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$pathFillType:I

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$name:Ljava/lang/String;

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$fill:Landroidx/compose/ui/graphics/Brush;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$fillAlpha:F

    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$stroke:Landroidx/compose/ui/graphics/Brush;

    iget v7, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeAlpha:F

    iget v8, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineWidth:F

    iget v9, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineCap:I

    iget v10, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineJoin:I

    iget v11, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$strokeLineMiter:F

    iget v12, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathStart:F

    iget v13, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathEnd:F

    iget v14, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$trimPathOffset:F

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v0, v0, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;->$$default:I

    move/from16 v18, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V

    return-void
.end method
