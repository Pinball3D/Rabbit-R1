.class final Landroidx/compose/material3/ChipKt$ChipContent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Chip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ChipKt;->ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $avatar:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $labelColor:J

.field final synthetic $labelTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $leadingIconColor:J

.field final synthetic $minHeight:F

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $trailingIconColor:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-wide p3, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$labelColor:J

    iput-object p5, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$avatar:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-wide p8, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$leadingIconColor:J

    iput-wide p10, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$trailingIconColor:J

    iput p12, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$minHeight:F

    iput-object p13, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iput p14, p0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipKt$ChipContent$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$labelColor:J

    iget-object v5, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$avatar:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-wide v8, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$leadingIconColor:J

    iget-wide v10, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$trailingIconColor:J

    iget v12, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$minHeight:F

    iget-object v13, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iget v0, v0, Landroidx/compose/material3/ChipKt$ChipContent$2;->$$changed:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-wide v9, v10

    move v11, v12

    move-object v12, v13

    move-object/from16 v13, p1

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ChipKt;->access$ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
