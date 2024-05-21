.class final Landroidx/compose/material3/AppBarKt$BottomAppBar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AppBarKt;->BottomAppBar-Snr_uVM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $actions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $contentColor:J

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $floatingActionButton:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $tonalElevation:F

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    iput-wide p4, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$containerColor:J

    iput-wide p6, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$contentColor:J

    iput p8, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$tonalElevation:F

    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p10, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput p11, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$$changed:I

    iput p12, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    iget-wide v3, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$containerColor:J

    iget-wide v5, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$contentColor:J

    iget v7, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$tonalElevation:F

    iget-object v8, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v9, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget p2, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    iget v12, p0, Landroidx/compose/material3/AppBarKt$BottomAppBar$2;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt;->BottomAppBar-Snr_uVM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
