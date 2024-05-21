.class final Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "NetworkManagerFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "()V",
        "getItemOffsets",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "view",
        "Landroid/view/View;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string p0, "outRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 222
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    const/4 p4, -0x1

    if-ne p0, p4, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/16 p3, 0x378

    const/16 p4, 0x9

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/16 p0, 0xf

    .line 228
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p0

    :goto_0
    invoke-static {p4}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    invoke-virtual {p1, v0, p0, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 230
    :cond_2
    invoke-static {p4}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
