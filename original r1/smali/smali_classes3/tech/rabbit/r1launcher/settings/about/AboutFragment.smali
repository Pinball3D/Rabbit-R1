.class public final Ltech/rabbit/r1launcher/settings/about/AboutFragment;
.super Landroidx/fragment/app/Fragment;
.source "AboutFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAboutFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AboutFragment.kt\ntech/rabbit/r1launcher/settings/about/AboutFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000f0\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0016J\u001a\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/about/AboutFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "adapter",
        "tech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1",
        "getAdapter",
        "()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "rvList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "sbevScrollBar",
        "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;",
        "getItems",
        "",
        "Lkotlin/Pair;",
        "",
        "getVersion",
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
        "onPause",
        "onResume",
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

.field private rvList:Landroidx/recyclerview/widget/RecyclerView;

.field private sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_about:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 30
    sget-object v0, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAdapter()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 30
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;

    return-object p0
.end method

.method private final getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "model"

    .line 84
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "r1OS version"

    .line 85
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 86
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 87
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getDeviceRamSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "memory"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 88
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getDeviceStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "storage"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getVersion()Ljava/lang/String;
    .locals 12

    const-string v0, "20240418.0-5-g4fd1bbff-dirty"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 92
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/String;

    const-string p0, "-"

    aput-object p0, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 93
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 95
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "_v"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const-string p0, "_"

    .line 97
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_2

    .line 102
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 99
    :goto_2
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    .line 105
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x0

    .line 107
    invoke-static {p0, v3, v4}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v3

    const/16 p0, 0x10

    .line 108
    invoke-static {p0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p0

    invoke-static {v3, v4, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toUpperCase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AboutFragment, onCreateView"

    .line 44
    invoke-static {v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 46
    sget p3, Ltech/rabbit/r1launcher/R$id;->cblv_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ltech/rabbit/r1launcher/settings/about/AboutFragment$onCreateView$1$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment$onCreateView$1$1;-><init>(Ltech/rabbit/r1launcher/settings/about/AboutFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p3, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    .line 50
    sget p3, Ltech/rabbit/r1launcher/R$id;->rv_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvList"

    if-nez p3, :cond_0

    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_0
    sget-object v2, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;

    const/16 v3, 0x9

    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;->create$default(Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;IIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p3, :cond_1

    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->getAdapter()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    sget p3, Ltech/rabbit/r1launcher/R$id;->sbev_scroll_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    if-nez p3, :cond_2

    const-string p3, "sbevScrollBar"

    .line 55
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_2
    new-instance v0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-direct {v0, p2}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    check-cast v0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;

    invoke-virtual {p3, v0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->attachSupporter(Ltech/rabbit/r1launcher/widget/scrollbar/supporter/ScrollBarExtViewSupporter;)V

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "AboutFragment, onDestroyView"

    .line 77
    invoke-static {v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->sbevScrollBar:Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;

    if-nez v0, :cond_0

    const-string v0, "sbevScrollBar"

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;->detachSupporter()V

    .line 80
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "AboutFragment, onPause"

    .line 72
    invoke-static {v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string p0, "AboutFragment, onResume"

    .line 68
    invoke-static {p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->getAdapter()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;

    move-result-object p1

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;->setNewInstance(Ljava/util/List;)V

    const-string p0, "AboutFragment, onViewCreated"

    .line 63
    invoke-static {p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    return-void
.end method
