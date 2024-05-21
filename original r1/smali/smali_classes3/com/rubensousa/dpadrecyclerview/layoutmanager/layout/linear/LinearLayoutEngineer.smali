.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;
.super Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;
.source "LinearLayoutEngineer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearLayoutEngineer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearLayoutEngineer.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer\n+ 2 LayoutRequest.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest\n+ 3 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,381:1\n202#2,7:382\n193#2,7:389\n193#2,7:396\n202#2,7:403\n193#2,7:410\n202#2,7:417\n202#2,7:428\n193#2,7:435\n62#3,4:424\n*S KotlinDebug\n*F\n+ 1 LinearLayoutEngineer.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer\n*L\n67#1:382,7\n74#1:389,7\n124#1:396,7\n132#1:403,7\n152#1:410,7\n161#1:417,7\n201#1:428,7\n211#1:435,7\n183#1:424,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 /2\u00020\u0001:\u0001/B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J4\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0014J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0014J<\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020(2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0014J4\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010,\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010-\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010.\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "layoutAlignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "onChildLayoutListener",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V",
        "append",
        "",
        "view",
        "Landroid/view/View;",
        "bounds",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
        "layoutRequest",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "applyHorizontalGravity",
        "",
        "applyVerticalGravity",
        "getEndDecorationSize",
        "getStartDecorationSize",
        "initLayout",
        "pivotPosition",
        "viewProvider",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "layoutBlock",
        "layoutResult",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;",
        "layoutDisappearingViews",
        "firstView",
        "lastView",
        "scrapViewProvider",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;",
        "layoutLoop",
        "",
        "pivotView",
        "layoutPivot",
        "prepend",
        "updatePivotBounds",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer$Companion;

.field public static final TAG:Ljava/lang/String; = "LinearLayoutEngineer"


# instance fields
.field private final onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutAlignment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChildLayoutListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;)V

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    return-void
.end method

.method public static final synthetic access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method private final append(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v0

    .line 281
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyHorizontalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 284
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    .line 285
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getTop()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyVerticalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 288
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    .line 289
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getLeft()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    :goto_0
    return v0
.end method

.method private final applyHorizontalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 2

    .line 314
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getReverseLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getGravity()I

    move-result p3

    const v0, 0x800007

    and-int/2addr p3, v0

    .line 315
    invoke-static {p3, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getGravity()I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    :goto_0
    if-eq p3, v1, :cond_2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/16 v0, 0x11

    if-eq p3, v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    .line 337
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p0

    add-int/2addr p3, p0

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    goto :goto_1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p1

    .line 331
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr p3, p0

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    .line 332
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getRight()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p1

    .line 325
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    .line 326
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getLeft()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    :goto_1
    return-void
.end method

.method private final applyVerticalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 1

    .line 344
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getGravity()I

    move-result p3

    and-int/lit8 p3, p3, 0x70

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x11

    if-eq p3, v0, :cond_1

    const/16 v0, 0x50

    if-eq p3, v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    .line 359
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p0

    add-int/2addr p3, p0

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p1

    .line 353
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p3, p0

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    .line 354
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getBottom()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getPerpendicularDecoratedSize(Landroid/view/View;)I

    move-result p1

    .line 347
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    .line 348
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getTop()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    :goto_0
    return-void
.end method

.method private final getEndDecorationSize(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I
    .locals 0

    .line 373
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getStartDecorationSize(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I
    .locals 0

    .line 365
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final layoutPivot(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->updatePivotBounds(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    .line 86
    invoke-interface {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;->onChildCreated(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->performLayout(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;)V

    .line 89
    sget-object p2, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Laid pivot "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LinearLayoutEngineer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setEmpty()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    .line 93
    invoke-interface {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;->onChildLaidOut(Landroid/view/View;)V

    return-void
.end method

.method private final prepend(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v0

    .line 296
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyHorizontalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 298
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    .line 299
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getBottom()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyVerticalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 303
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    .line 304
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->getRight()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    :goto_0
    return v0
.end method

.method private final updatePivotBounds(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 226
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutAlignment()Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getChildStart(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getStartDecorationSize(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 234
    invoke-direct {p0, p1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getEndDecorationSize(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I

    move-result v2

    add-int/2addr v0, v2

    .line 236
    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setTop(I)V

    .line 238
    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setBottom(I)V

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyHorizontalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setLeft(I)V

    .line 242
    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setRight(I)V

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->applyVerticalGravity(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected initLayout(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 3

    const-string v0, "layoutRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getViewForPosition(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->layoutPivot(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 382
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 383
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 384
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 385
    invoke-static {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 386
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 68
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 69
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result v1

    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 71
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 389
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 390
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 391
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 392
    invoke-static {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 393
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 75
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 76
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getEndAfterPadding()I

    move-result p1

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 78
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    return-object v0
.end method

.method protected layoutBlock(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;)V
    .locals 1

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutResult"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-interface {p2, p1, p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;->next(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p2

    .line 255
    invoke-virtual {p0, p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->addView(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    iget-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    .line 256
    invoke-interface {p3, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;->onChildCreated(Landroid/view/View;)V

    .line 257
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 259
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isAppending()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->append(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I

    move-result p1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->prepend(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)I

    move-result p1

    .line 259
    :goto_0
    invoke-virtual {p5, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->setConsumedSpace(I)V

    .line 265
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Laid out view "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " at: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LinearLayoutEngineer"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->shouldSkipSpaceOf(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 270
    invoke-virtual {p5, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->setSkipConsumption(Z)V

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->performLayout(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;)V

    .line 274
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewBounds()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->setEmpty()V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    .line 275
    invoke-interface {p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;->onChildLaidOut(Landroid/view/View;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->onChildLayoutListener:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;

    .line 276
    invoke-interface {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;->onBlockLaidOut()V

    return-void
.end method

.method protected layoutDisappearingViews(Landroid/view/View;Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "firstView"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "lastView"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "layoutRequest"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "scrapViewProvider"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "recycler"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "state"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v7

    .line 183
    invoke-virtual/range {p4 .. p4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->getScrap()Landroidx/collection/SparseArrayCompat;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v9, :cond_3

    .line 425
    invoke-virtual {v8, v11}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v14

    invoke-virtual {v8, v11}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ge v14, v7, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 184
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getReverseLayout()Z

    move-result v10

    if-eq v14, v10, :cond_1

    .line 185
    sget-object v10, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    goto :goto_2

    .line 187
    :cond_1
    sget-object v10, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    .line 189
    :goto_2
    sget-object v14, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    move/from16 v16, v7

    const-string v7, "itemView"

    if-ne v10, v14, :cond_2

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v10

    iget-object v14, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v7

    add-int/2addr v12, v7

    goto :goto_3

    .line 192
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v10

    iget-object v14, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v7

    add-int/2addr v13, v7

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    goto :goto_0

    .line 196
    :cond_3
    sget-object v7, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;

    invoke-virtual {v7}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$Companion;->getDEBUG$dpadrecyclerview_release()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Scrap extra layout: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LinearLayoutEngineer"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-lez v12, :cond_5

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v7

    .line 428
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 429
    sget-object v8, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {v3, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 431
    invoke-static {v3, v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    const/4 v7, 0x0

    .line 202
    invoke-virtual {v3, v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setRecyclingEnabled(Z)V

    .line 203
    invoke-static/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 204
    invoke-virtual {v3, v12}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 205
    invoke-virtual {v4, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->setNextLayoutPosition(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 207
    move-object v1, v4

    check-cast v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_5
    if-lez v13, :cond_6

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v1

    .line 435
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 436
    sget-object v7, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {v3, v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 438
    invoke-static {v3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setRecyclingEnabled(Z)V

    .line 213
    invoke-static/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 214
    invoke-virtual {v3, v13}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 215
    invoke-virtual {v4, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;->setNextLayoutPosition(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 217
    move-object v1, v4

    check-cast v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :cond_6
    return-void
.end method

.method public layoutLoop(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 9

    const-string v0, "pivotView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_3

    return v1

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 117
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getEndAfterPadding()I

    move-result v6

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 118
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 119
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 120
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedSize(Landroid/view/View;)I

    move-result p1

    add-int/2addr v7, p1

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setRecyclingEnabled(Z)V

    .line 396
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 397
    sget-object v8, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 398
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 399
    invoke-static {p2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 400
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 125
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 126
    invoke-virtual {p2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 128
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 129
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result v3

    .line 130
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewRecycler()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;

    move-result-object v8

    invoke-virtual {v8, p4, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 403
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 404
    sget-object v8, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 405
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 406
    invoke-static {p2, v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 407
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 133
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 134
    invoke-virtual {p2, v6}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 136
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 137
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getCheckpoint()I

    move-result v6

    .line 138
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->getViewRecycler()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;

    move-result-object v8

    invoke-virtual {v8, p4, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    .line 140
    invoke-virtual {p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setRecyclingEnabled(Z)V

    sub-int/2addr v3, v6

    if-ge v3, v7, :cond_4

    .line 143
    invoke-virtual {p2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCurrentPosition(I)V

    .line 144
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    return v1

    .line 149
    :cond_4
    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setIsLoopingAllowed(Z)V

    .line 410
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 411
    sget-object v3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 412
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 413
    invoke-static {p2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 414
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 153
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 155
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getEndAfterPadding()I

    move-result v2

    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 154
    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 158
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 417
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 418
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 419
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 420
    invoke-static {p2, v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 421
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 162
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setCheckpoint(I)V

    .line 164
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->access$getLayoutInfo(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setFillSpace(I)V

    .line 167
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;->fill(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    return p1
.end method
