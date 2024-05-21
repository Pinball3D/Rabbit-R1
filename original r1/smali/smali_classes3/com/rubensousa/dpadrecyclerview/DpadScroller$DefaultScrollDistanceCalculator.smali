.class final Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;
.super Ljava/lang/Object;
.source "DpadScroller.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultScrollDistanceCalculator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;",
        "Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;",
        "()V",
        "calculateScrollDistance",
        "",
        "recyclerView",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "event",
        "Landroid/view/KeyEvent;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateScrollDistance(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroid/view/KeyEvent;)I
    .locals 0

    const-string p0, "recyclerView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "event"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    :goto_0
    return p0
.end method
