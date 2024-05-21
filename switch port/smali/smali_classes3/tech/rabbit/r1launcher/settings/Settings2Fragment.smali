.class public final Ltech/rabbit/r1launcher/settings/Settings2Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Settings2Fragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/Settings2Fragment$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettings2Fragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Settings2Fragment.kt\ntech/rabbit/r1launcher/settings/Settings2Fragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,73:1\n329#2,4:74\n329#2,4:78\n*S KotlinDebug\n*F\n+ 1 Settings2Fragment.kt\ntech/rabbit/r1launcher/settings/Settings2Fragment\n*L\n62#1:74,4\n67#1:78,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u001c\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/Settings2Fragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
        "()V",
        "adapter",
        "Ltech/rabbit/r1launcher/settings/SettingsAdapter;",
        "getAdapter",
        "()Ltech/rabbit/r1launcher/settings/SettingsAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "rvList",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onGlobalFocusChanged",
        "oldFocus",
        "newFocus",
        "onViewCreated",
        "view",
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
.field private final adapter$delegate:Lkotlin/Lazy;

.field private rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;


# direct methods
.method public static synthetic $r8$lambda$aYzl7iZqEH5adgzEPbHyHM2qlq8(Ltech/rabbit/r1launcher/settings/Settings2Fragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->onViewCreated$lambda$1(Ltech/rabbit/r1launcher/settings/Settings2Fragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_settings2:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 22
    sget-object v0, Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAdapter()Ltech/rabbit/r1launcher/settings/SettingsAdapter;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->adapter$delegate:Lkotlin/Lazy;

    .line 22
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Ltech/rabbit/r1launcher/settings/Settings2Fragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    const/4 v1, 0x0

    const-string v2, "rvList"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 55
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setSelectedPosition(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 30
    sget p3, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ltech/rabbit/r1launcher/settings/Settings2Fragment$onCreateView$1$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment$onCreateView$1$1;-><init>(Ltech/rabbit/r1launcher/settings/Settings2Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p3, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    .line 34
    sget p3, Ltech/rabbit/r1launcher/R$id;->rv_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    const-string v0, "rvList"

    if-nez p3, :cond_0

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_0
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;

    const/4 v2, 0x7

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;->create$default(Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;IIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p3, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p3, :cond_1

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->getAdapter()Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    check-cast p0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 45
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const-string v1, "rvList"

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v3, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p1, :cond_0

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    const/16 p2, 0x2c

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p0, :cond_3

    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    check-cast v2, Landroid/view/View;

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 76
    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz p2, :cond_b

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p1, :cond_6

    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_7
    move-object p1, v2

    :goto_2
    const/16 p2, 0x28

    if-eqz p1, :cond_8

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    if-ne p1, v3, :cond_8

    return-void

    :cond_8
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p0, :cond_9

    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v2, p0

    :goto_3
    check-cast v2, Landroid/view/View;

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_a

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 78
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->getAdapter()Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    move-result-object p1

    sget-object p2, Ltech/rabbit/r1launcher/settings/Settings2Fragment$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/SettingsAdapter;->setNewInstance(Ljava/util/List;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/Settings2Fragment;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-nez p1, :cond_0

    const-string p1, "rvList"

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance p2, Ltech/rabbit/r1launcher/settings/Settings2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/Settings2Fragment;)V

    invoke-virtual {p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
