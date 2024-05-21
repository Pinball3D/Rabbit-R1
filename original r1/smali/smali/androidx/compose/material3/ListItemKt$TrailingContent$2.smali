.class final Landroidx/compose/material3/ListItemKt$TrailingContent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ListItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ListItemKt;->TrailingContent-3IgeMak(Landroidx/compose/foundation/layout/RowScope;JZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $contentColor:J

.field final synthetic $this_TrailingContent:Landroidx/compose/foundation/layout/RowScope;

.field final synthetic $topAlign:Z


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/RowScope;JZLkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "JZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$this_TrailingContent:Landroidx/compose/foundation/layout/RowScope;

    iput-wide p2, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$contentColor:J

    iput-boolean p4, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$topAlign:Z

    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$content:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$this_TrailingContent:Landroidx/compose/foundation/layout/RowScope;

    iget-wide v1, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$contentColor:J

    iget-boolean v3, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$topAlign:Z

    iget-object v4, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/ListItemKt$TrailingContent$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt;->access$TrailingContent-3IgeMak(Landroidx/compose/foundation/layout/RowScope;JZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
