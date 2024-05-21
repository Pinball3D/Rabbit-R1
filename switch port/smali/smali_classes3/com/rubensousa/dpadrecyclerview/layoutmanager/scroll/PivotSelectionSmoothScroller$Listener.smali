.class public interface abstract Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;
.super Ljava/lang/Object;
.source "PivotSelectionSmoothScroller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;",
        "",
        "onPivotFound",
        "",
        "pivotView",
        "Landroid/view/View;",
        "position",
        "",
        "subPosition",
        "onPivotNotFound",
        "onSmoothScrollerStopped",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onPivotFound(Landroid/view/View;II)V
.end method

.method public abstract onPivotNotFound(I)V
.end method

.method public abstract onSmoothScrollerStopped()V
.end method
