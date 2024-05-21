.class public final Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SettingListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0014J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "context",
        "Landroid/content/Context;",
        "holdItems",
        "",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "onConfirmKeyDown",
        "Lkotlin/Function1;",
        "",
        "getOnConfirmKeyDown",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnConfirmKeyDown",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onConfirmKeyUp",
        "getOnConfirmKeyUp",
        "setOnConfirmKeyUp",
        "convert",
        "holder",
        "item",
        "isEnableTerminal",
        "",
        "s",
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
.field private holdItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onConfirmKeyDown:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onConfirmKeyUp:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$U92U04FZ3hpyeTe58qEyaQ6QXNA(Landroid/widget/TextView;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-static/range {p0 .. p8}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->convert$lambda$2$lambda$1(Landroid/widget/TextView;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFUdMSigYPZO804BU_JOQ6pV-z8(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->convert$lambda$2$lambda$0(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "holdItems"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget p1, Ltech/rabbit/r1launcher/R$layout;->item_layout_settings_list:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->holdItems:Ljava/util/List;

    .line 19
    sget-object p1, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$onConfirmKeyUp$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$onConfirmKeyUp$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyUp:Lkotlin/jvm/functions/Function1;

    .line 20
    sget-object p1, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$onConfirmKeyDown$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$onConfirmKeyDown$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyDown:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final convert$lambda$2$lambda$0(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$itemData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x42

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    if-eq p4, v3, :cond_0

    if-eq p4, v2, :cond_0

    if-eq p4, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->isEnableTerminal(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 57
    sget-object p3, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {p3}, LAppConfig;->isEnabledTerminal()Z

    move-result p3

    xor-int/2addr p3, v4

    invoke-virtual {p2, p3, v0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->toggle(ZZ)V

    .line 59
    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyUp:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 62
    :cond_2
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4

    if-eq p4, v3, :cond_3

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_3

    goto :goto_0

    .line 64
    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyDown:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method private static final convert$lambda$2$lambda$1(Landroid/widget/TextView;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Z)V
    .locals 2

    const-string p7, "$this_apply"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "this$0"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$itemData"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$holder"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p7, -0x1

    if-eqz p8, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    move v0, p7

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p8, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42400000    # 48.0f

    :goto_1
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    iget-object p0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p8, :cond_2

    .line 76
    iget-object v0, p2, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->holdItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iput p7, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 79
    :cond_2
    invoke-direct {p2, p3}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->isEnableTerminal(Ljava/lang/String;)Z

    move-result p3

    const/16 p7, 0x8

    if-eqz p3, :cond_3

    .line 80
    invoke-virtual {p5, p8}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->setUnderFocus(Z)V

    .line 81
    invoke-virtual {p4, p7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 p3, -0x2

    .line 83
    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    invoke-virtual {p4, p7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    :goto_2
    iget-object p3, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p8}, Landroid/view/View;->setSelected(Z)V

    .line 88
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final isEnableTerminal(Ljava/lang/String;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_system_enable_terminal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Ltech/rabbit/r1launcher/R$id;->tv_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 26
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Ltech/rabbit/r1launcher/R$id;->fl_hold:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    .line 27
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Ltech/rabbit/r1launcher/R$id;->ss_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ltech/rabbit/r1launcher/widget/SettingSwitch;

    .line 28
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Ltech/rabbit/r1launcher/R$id;->item_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x42400000    # 48.0f

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 33
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getLayoutPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    .line 37
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    :goto_0
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 40
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->isEnableTerminal(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v7, v3}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->setVisibility(I)V

    .line 42
    invoke-virtual {v7, v3}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->setUnderFocus(Z)V

    .line 43
    sget-object v1, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v1}, LAppConfig;->isEnabledTerminal()Z

    move-result v1

    invoke-virtual {v7, v1, v3}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->toggle(ZZ)V

    const/4 v1, -0x1

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v7, v4}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->setVisibility(I)V

    const/4 v1, -0x2

    .line 47
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    :goto_1
    iget-object v1, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(I)V

    .line 52
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 53
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v7}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Ltech/rabbit/r1launcher/widget/SettingSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v9, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;Ljava/lang/String;Landroid/widget/FrameLayout;Ltech/rabbit/r1launcher/widget/SettingSwitch;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final getOnConfirmKeyDown()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyDown:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnConfirmKeyUp()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyUp:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setOnConfirmKeyDown(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyDown:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnConfirmKeyUp(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/adapter/SettingListAdapter;->onConfirmKeyUp:Lkotlin/jvm/functions/Function1;

    return-void
.end method
