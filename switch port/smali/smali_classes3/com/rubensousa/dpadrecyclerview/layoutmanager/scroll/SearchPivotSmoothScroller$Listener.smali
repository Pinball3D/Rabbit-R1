.class public interface abstract Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;
.super Ljava/lang/Object;
.source "SearchPivotSmoothScroller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H&J\u0008\u0010\u000c\u001a\u00020\u0003H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;",
        "",
        "onPivotAttached",
        "",
        "adapterPosition",
        "",
        "onPivotFound",
        "pivotView",
        "Landroid/view/View;",
        "onPivotLaidOut",
        "onPivotNotFound",
        "targetPosition",
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
.method public abstract onPivotAttached(I)V
.end method

.method public abstract onPivotFound(Landroid/view/View;)V
.end method

.method public abstract onPivotLaidOut(Landroid/view/View;)V
.end method

.method public abstract onPivotNotFound(I)V
.end method

.method public abstract onSmoothScrollerStopped()V
.end method
