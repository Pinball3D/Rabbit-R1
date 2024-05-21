.class final Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Snackbar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnackbarKt$Snackbar$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $$dirty:I

.field final synthetic $action:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $actionContentColor:J

.field final synthetic $actionOnNewLine:Z

.field final synthetic $actionTextStyle:Landroidx/compose/ui/text/TextStyle;

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

.field final synthetic $dismissAction:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $dismissActionContentColor:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJIZ)V
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
            "Landroidx/compose/ui/text/TextStyle;",
            "JJIZ)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$action:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$content:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissAction:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-wide p5, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionContentColor:J

    iput-wide p7, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissActionContentColor:J

    iput p9, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$$dirty:I

    iput-boolean p10, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionOnNewLine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const-string v0, "C:Snackbar.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 117
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.Snackbar.<anonymous>.<anonymous> (Snackbar.kt:115)"

    const v2, 0x31d2b1ea

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$action:Lkotlin/jvm/functions/Function2;

    const/high16 v0, 0x70000

    const v1, 0xe000

    if-nez p2, :cond_3

    const p2, -0x7d6e0600

    .line 118
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "117@5670L278"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissAction:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v6, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionContentColor:J

    iget-wide v8, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissActionContentColor:J

    iget p0, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$$dirty:I

    shr-int/lit8 p2, p0, 0x1b

    and-int/lit8 p2, p2, 0xe

    or-int/lit8 p2, p2, 0x30

    and-int/lit16 v10, p0, 0x380

    or-int/2addr p2, v10

    shr-int/lit8 v10, p0, 0x9

    and-int/2addr v1, v10

    or-int/2addr p2, v1

    shr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v0

    or-int v11, p2, p0

    move-object v10, p1

    invoke-static/range {v2 .. v11}, Landroidx/compose/material3/SnackbarKt;->access$OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionOnNewLine:Z

    if-eqz p2, :cond_4

    const p2, -0x7d6e04c6

    .line 126
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "125@5984L255"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$content:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$action:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissAction:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v6, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionContentColor:J

    iget-wide v8, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissActionContentColor:J

    iget p0, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$$dirty:I

    shr-int/lit8 p2, p0, 0x1b

    and-int/lit8 p2, p2, 0xe

    and-int/lit8 v10, p0, 0x70

    or-int/2addr p2, v10

    and-int/lit16 v10, p0, 0x380

    or-int/2addr p2, v10

    shr-int/lit8 v10, p0, 0x9

    and-int/2addr v1, v10

    or-int/2addr p2, v1

    shr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v0

    or-int v11, p2, p0

    move-object v10, p1

    invoke-static/range {v2 .. v11}, Landroidx/compose/material3/SnackbarKt;->access$NewLineButtonSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1

    :cond_4
    const p2, -0x7d6e03ae

    .line 134
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "133@6264L280"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$content:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$action:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissAction:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v6, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$actionContentColor:J

    iget-wide v8, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$dismissActionContentColor:J

    iget p0, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$1$1;->$$dirty:I

    shr-int/lit8 p2, p0, 0x1b

    and-int/lit8 p2, p2, 0xe

    and-int/lit8 v10, p0, 0x70

    or-int/2addr p2, v10

    and-int/lit16 v10, p0, 0x380

    or-int/2addr p2, v10

    shr-int/lit8 v10, p0, 0x9

    and-int/2addr v1, v10

    or-int/2addr p2, v1

    shr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v0

    or-int v11, p2, p0

    move-object v10, p1

    invoke-static/range {v2 .. v11}, Landroidx/compose/material3/SnackbarKt;->access$OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_2
    return-void
.end method
