.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt;->ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $contentColor:J

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method constructor <init>(ILandroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
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
            ">;II)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$selectedTabIndex:I

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$containerColor:J

    iput-wide p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$contentColor:J

    iput p7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$edgePadding:F

    iput-object p8, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$indicator:Lkotlin/jvm/functions/Function3;

    iput-object p9, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$tabs:Lkotlin/jvm/functions/Function2;

    iput p11, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$$changed:I

    iput p12, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    iget v0, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$selectedTabIndex:I

    iget-object v1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$containerColor:J

    iget-wide v4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$contentColor:J

    iget v6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$edgePadding:F

    iget-object v7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$indicator:Lkotlin/jvm/functions/Function3;

    iget-object v8, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$tabs:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    iget v12, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$3;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/TabRowKt;->ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
