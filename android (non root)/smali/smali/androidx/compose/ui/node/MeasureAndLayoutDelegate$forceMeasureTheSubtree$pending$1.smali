.class final Landroidx/compose/ui/node/MeasureAndLayoutDelegate$forceMeasureTheSubtree$pending$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MeasureAndLayoutDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/node/LayoutNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/ui/node/LayoutNode;",
        "invoke",
        "(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $affectsLookahead:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$forceMeasureTheSubtree$pending$1;->$affectsLookahead:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$forceMeasureTheSubtree$pending$1;->$affectsLookahead:Z

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadMeasurePending$ui_release()Z

    move-result p0

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 521
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$forceMeasureTheSubtree$pending$1;->invoke(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
