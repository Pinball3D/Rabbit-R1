.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-xOkiWaM(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $dragHandle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrimColor:J

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$sheetState:Landroidx/compose/material3/SheetState;

    iput-object p4, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p5, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$containerColor:J

    iput-wide p7, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$contentColor:J

    iput p9, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$tonalElevation:F

    iput-wide p10, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$scrimColor:J

    iput-object p12, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$content:Lkotlin/jvm/functions/Function3;

    iput p14, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$$changed:I

    iput p15, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$containerColor:J

    iget-wide v7, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$contentColor:J

    iget v9, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$tonalElevation:F

    iget-wide v10, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$scrimColor:J

    iget-object v12, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$content:Lkotlin/jvm/functions/Function3;

    iget v14, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;->$$default:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move v8, v9

    move-wide v9, v10

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, p1

    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-xOkiWaM(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
