.class public final Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;
.super Landroidx/fragment/app/Fragment;
.source "VolumeSettingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J&\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u0018\u0010#\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u0010\u0010$\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u001a\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0006\u0010(\u001a\u00020\u0010R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "mAdapter",
        "Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;",
        "mRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRootView",
        "Landroid/view/View;",
        "mSettingTitle",
        "Ltech/rabbit/r1launcher/widget/SettingTitle;",
        "mVolumeAdjustCard",
        "Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;",
        "tagStr",
        "",
        "dismissVolumeCard",
        "",
        "doInit",
        "getStreamFromString",
        "",
        "str",
        "initRecyclerView",
        "isVolumeCardVisible",
        "",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyCodeEventDown",
        "keyCode",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "onKeyCodeEventUp",
        "onRecyclerViewConfirmKeyDown",
        "onRecyclerViewConfirmKeyUp",
        "onViewCreated",
        "view",
        "showVolumeCard",
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
.field private mAdapter:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSettingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

.field private mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

.field private final tagStr:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$nvZtSXEQbQ4fAe_uWJT7HkAHKyA(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->doInit$lambda$0(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "VolumeSettingFragment"

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->tagStr:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$dismissVolumeCard(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->dismissVolumeCard()V

    return-void
.end method

.method public static final synthetic access$onRecyclerViewConfirmKeyDown(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->onRecyclerViewConfirmKeyDown(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onRecyclerViewConfirmKeyUp(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->onRecyclerViewConfirmKeyUp(Ljava/lang/String;)V

    return-void
.end method

.method private final dismissVolumeCard()V
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 123
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final doInit()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->initRecyclerView()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mSettingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$doInit$1;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setOnKeyDownCallback(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 54
    new-instance v1, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final doInit$lambda$0(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private final getStreamFromString(Ljava/lang/String;)I
    .locals 1

    .line 98
    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_volume_media:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_volume_voice:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final initRecyclerView()V
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    sget v1, Ltech/rabbit/r1launcher/R$string;->settings_page_volume_voice:I

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget v3, Ltech/rabbit/r1launcher/R$string;->settings_page_volume_media:I

    invoke-virtual {p0, v3}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget v4, Ltech/rabbit/r1launcher/R$string;->settings_page_volume_sfx:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 68
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 67
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

    invoke-direct {v3, v2, v1}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 70
    new-instance v2, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$1;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->setOnConfirmKeyUp(Lkotlin/jvm/functions/Function1;)V

    .line 73
    new-instance v2, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$2;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$initRecyclerView$1$1$2;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->setOnConfirmKeyDown(Lkotlin/jvm/functions/Function1;)V

    iput-object v3, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mAdapter:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

    .line 77
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mAdapter:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;

    if-eqz p0, :cond_1

    .line 79
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->setNewInstance(Ljava/util/List;)V

    .line 80
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(I)V

    :goto_0
    return-void
.end method

.method private final isVolumeCardVisible()Z
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final onRecyclerViewConfirmKeyDown(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->tagStr:Ljava/lang/String;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRecyclerViewConfirmKeyDown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->getStreamFromString(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;->setAudioStream(I)V

    .line 88
    :cond_0
    new-instance p1, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$onRecyclerViewConfirmKeyDown$1;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$onRecyclerViewConfirmKeyDown$1;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onRecyclerViewConfirmKeyUp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->tagStr:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRecyclerViewConfirmKeyUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p1, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$onRecyclerViewConfirmKeyUp$1;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment$onRecyclerViewConfirmKeyUp$1;-><init>(Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget p3, Ltech/rabbit/r1launcher/R$layout;->fragment_volume_settings_page:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 38
    sget p3, Ltech/rabbit/r1launcher/R$id;->volume_title_settings:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1launcher/widget/SettingTitle;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mSettingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 39
    sget p3, Ltech/rabbit/r1launcher/R$id;->rv_volume_items:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 40
    sget p2, Ltech/rabbit/r1launcher/R$id;->card_volume:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    :cond_2
    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final onKeyCodeEventDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 131
    invoke-static {p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeUp(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeDown(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->isVolumeCardVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onKeyCodeEventUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 140
    invoke-static {p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeDown(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeUp(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->isVolumeCardVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;->onKeyCodeEvent(I)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->doInit()V

    return-void
.end method

.method public final showVolumeCard()V
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;->mVolumeAdjustCard:Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/volume/VolumeAdjustCard;->setVisibility(I)V

    :goto_0
    return-void
.end method
