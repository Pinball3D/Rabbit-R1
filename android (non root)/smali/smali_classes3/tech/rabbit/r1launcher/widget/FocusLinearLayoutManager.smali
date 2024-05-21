.class public final Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "FocusLinearLayoutManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001BO\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u001a\u0008\u0002\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0010\u0010B+\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0015J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u000c\u0010\u001b\u001a\u00060\u001cR\u00020\tH\u0002J\u0008\u0010\u001d\u001a\u00020\u000eH\u0002J.\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u00052\n\u0010!\u001a\u00060\u001cR\u00020\t2\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u001a\u0010#\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0008\u0010$\u001a\u00020\u000fH\u0002J\u0008\u0010%\u001a\u00020\u000fH\u0002R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "context",
        "Landroid/content/Context;",
        "orientation",
        "",
        "reverseLayout",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "stopAt",
        "Ltech/rabbit/r1launcher/widget/StopPoint;",
        "onSearchFailed",
        "Lkotlin/Function2;",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "",
        "(Landroid/content/Context;IZLandroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/StopPoint;Lkotlin/jvm/functions/Function2;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "TAG",
        "",
        "findRecyclerViewParamsView",
        "Landroid/view/View;",
        "view",
        "getRecycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "getState",
        "onFocusSearchFailed",
        "focused",
        "direction",
        "recycler",
        "state",
        "onInterceptFocusSearch",
        "startInterceptRequestLayout",
        "stopInterceptRequestLayout",
        "app_productionEnvRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private onSearchFailed:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLandroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/StopPoint;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ltech/rabbit/r1launcher/widget/StopPoint;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSearchFailed"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 21
    sget-object p1, Ltech/rabbit/r1launcher/widget/StopPoint;->NONE:Ltech/rabbit/r1launcher/widget/StopPoint;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;

    .line 22
    sget-object p1, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$onSearchFailed$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$onSearchFailed$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const-string p1, "FocusLinerLayoutManager"

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    iput-object p5, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;

    iput-object p4, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->onSearchFailed:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZLandroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/StopPoint;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 29
    sget-object p5, Ltech/rabbit/r1launcher/widget/StopPoint;->NONE:Ltech/rabbit/r1launcher/widget/StopPoint;

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 30
    sget-object p5, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$1;

    move-object p6, p5

    check-cast p6, Lkotlin/jvm/functions/Function2;

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 24
    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;-><init>(Landroid/content/Context;IZLandroidx/recyclerview/widget/RecyclerView;Ltech/rabbit/r1launcher/widget/StopPoint;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    sget-object p1, Ltech/rabbit/r1launcher/widget/StopPoint;->NONE:Ltech/rabbit/r1launcher/widget/StopPoint;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;

    .line 22
    sget-object p1, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$onSearchFailed$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager$onSearchFailed$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->onSearchFailed:Lkotlin/jvm/functions/Function2;

    const-string p1, "FocusLinerLayoutManager"

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final findRecyclerViewParamsView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    return-object p1

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->findRecyclerViewParamsView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final getRecycler()Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .locals 2

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mRecycler"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "recyclerView"

    .line 151
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Recycler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    return-object p0
.end method

.method private final getState()Landroidx/recyclerview/widget/RecyclerView$State;
    .locals 2

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mState"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "recyclerView"

    .line 158
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.State"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$State;

    return-object p0
.end method

.method private final startInterceptRequestLayout()V
    .locals 4

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "startInterceptRequestLayout"

    .line 131
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "recyclerView"

    .line 133
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final stopInterceptRequestLayout()V
    .locals 5

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 142
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopInterceptRequestLayout"

    .line 140
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "recyclerView"

    .line 145
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 2

    const-string v0, "focused"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->onSearchFailed:Lkotlin/jvm/functions/Function2;

    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    const-string v1, "onFocusSearchFailed: "

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    const-string v0, "focused"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptFocusSearch , "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->getItemCount()I

    move-result v0

    .line 54
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->findRecyclerViewParamsView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onInterceptFocusSearch , focused = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " direction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x82

    const/16 v4, 0x21

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;

    .line 65
    sget-object v6, Ltech/rabbit/r1launcher/widget/StopPoint;->TOP:Ltech/rabbit/r1launcher/widget/StopPoint;

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    if-ne v1, v7, :cond_3

    if-ne p2, v4, :cond_3

    return-object p1

    :cond_3
    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopAt:Ltech/rabbit/r1launcher/widget/StopPoint;

    .line 67
    sget-object v6, Ltech/rabbit/r1launcher/widget/StopPoint;->BOTTOM:Ltech/rabbit/r1launcher/widget/StopPoint;

    const-string v8, "recyclerView"

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_4
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ne v1, v5, :cond_5

    if-ne p2, v3, :cond_5

    return-object p1

    :cond_5
    iget-object v5, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "onInterceptFocusSearch , fromPos = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " count = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v7, :cond_6

    if-ne p2, v4, :cond_6

    return-object v2

    :cond_6
    iget-object v4, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_7

    .line 75
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ne v1, v4, :cond_8

    if-ne p2, v3, :cond_8

    return-object v2

    :cond_8
    if-gez v1, :cond_9

    goto :goto_1

    :cond_9
    if-lt v1, v0, :cond_a

    :goto_1
    return-object p1

    :cond_a
    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_b

    .line 88
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 89
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_2

    :cond_c
    move-object v3, v2

    :goto_2
    iget-object v4, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onInterceptFocusSearch: holder="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_f

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_d

    .line 95
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v2, v0

    :goto_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    if-ge v1, v0, :cond_f

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    const-string v1, "onInterceptFocusSearch: scroll"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->getRecycler()Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->getState()Landroidx/recyclerview/widget/RecyclerView$State;

    move-result-object v1

    .line 101
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->startInterceptRequestLayout()V

    .line 103
    invoke-super {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    .line 110
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->stopInterceptRequestLayout()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->TAG:Ljava/lang/String;

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onInterceptFocusSearch: view="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_f
    if-nez v3, :cond_10

    return-object p1

    .line 119
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "focusable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object v3

    .line 122
    :cond_11
    invoke-virtual {p0, v3, p2}, Ltech/rabbit/r1launcher/widget/FocusLinearLayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
