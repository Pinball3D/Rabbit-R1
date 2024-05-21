.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;
.super Ljava/lang/Object;
.source "DefaultFocusInterceptor.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J*\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "focusFinder",
        "Landroid/view/FocusFinder;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Landroid/view/FocusFinder;)V",
        "findFocus",
        "Landroid/view/View;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "focusedView",
        "position",
        "",
        "direction",
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


# instance fields
.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final focusFinder:Landroid/view/FocusFinder;

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Landroid/view/FocusFinder;)V
    .locals 1

    const-string v0, "layoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusFinder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->focusFinder:Landroid/view/FocusFinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Landroid/view/FocusFinder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 32
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p3

    const-string p4, "getInstance(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;-><init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Landroid/view/FocusFinder;)V

    return-void
.end method


# virtual methods
.method public findFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II)Landroid/view/View;
    .locals 2

    const-string p3, "recyclerView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "focusedView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object p3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 43
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isVertical()Z

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 44
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v1

    .line 41
    invoke-virtual {p3, p4, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;->getAbsoluteDirection(IZZ)I

    move-result p3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;->focusFinder:Landroid/view/FocusFinder;

    .line 46
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
