.class public final Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;
.super Ltech/rabbit/r1launcher/settings/holder/BaseHolder;
.source "BrightnessSettingHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrightnessSettingHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrightnessSettingHolder.kt\ntech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,97:1\n205#2,8:98\n1#3:106\n329#4,4:107\n262#4,2:111\n*S KotlinDebug\n*F\n+ 1 BrightnessSettingHolder.kt\ntech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder\n*L\n73#1:98,8\n32#1:107,4\n36#1:111,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;",
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;",
        "getBinding",
        "()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;",
        "getBrightnessAdjustCard",
        "Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;",
        "decorView",
        "Landroid/widget/FrameLayout;",
        "hideBrightnessAdjustCard",
        "",
        "isShowingBrightnessAdjustCard",
        "",
        "onBind",
        "item",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "showBrightnessAdjustCard",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;-><init>(Landroid/view/View;)V

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    .line 24
    new-instance v0, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    new-instance v0, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private final getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;
    .locals 1

    .line 20
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p0

    const-string v0, "bind(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getBrightnessAdjustCard(Landroid/widget/FrameLayout;)Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;
    .locals 0

    .line 91
    sget p0, Ltech/rabbit/r1launcher/R$id;->id_settings_brightness_adjust_card:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    return-object p0
.end method

.method private final hideBrightnessAdjustCard(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBrightnessAdjustCard(Landroid/widget/FrameLayout;)Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final isShowingBrightnessAdjustCard(Landroid/widget/FrameLayout;)Z
    .locals 3

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-gez v0, :cond_0

    .line 100
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 101
    :cond_0
    check-cast v1, Landroid/view/View;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method static final lambda$3$lambda$1(Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;Landroid/view/View;Z)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->requireContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    sget v1, Ltech/rabbit/r1launcher/R$color;->black:I

    goto :goto_0

    :cond_0
    sget v1, Ltech/rabbit/r1launcher/R$color;->white:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 26
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 27
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 29
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    .line 26
    :goto_2
    invoke-virtual {p1, v2, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 32
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvLabel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_3

    const/16 v2, 0x24

    goto :goto_3

    :cond_3
    const/16 v2, 0x1d

    .line 33
    :goto_3
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvLabel:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_4

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_4

    :cond_4
    const/high16 v0, 0x41c00000    # 24.0f

    :goto_4
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 36
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvHold:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p1, "tvHold"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    .line 111
    :goto_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 107
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final lambda$3$lambda$2(Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_2
    const/4 p1, 0x0

    if-nez v1, :cond_3

    return p1

    .line 43
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 44
    sget-object p3, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p3, p2}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 45
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->isShowingBrightnessAdjustCard(Landroid/widget/FrameLayout;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 47
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->showBrightnessAdjustCard(Landroid/widget/FrameLayout;)V

    return v2

    .line 49
    :cond_4
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->isShowingBrightnessAdjustCard(Landroid/widget/FrameLayout;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 50
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBrightnessAdjustCard(Landroid/widget/FrameLayout;)Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->onKeyCodeEvent(I)Z

    move-result p0

    if-ne p0, v2, :cond_5

    move p1, v2

    :cond_5
    return p1

    .line 54
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v2, :cond_8

    .line 55
    sget-object p3, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p3, p2}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 56
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->isShowingBrightnessAdjustCard(Landroid/widget/FrameLayout;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 58
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->hideBrightnessAdjustCard(Landroid/widget/FrameLayout;)V

    return v2

    .line 60
    :cond_7
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->isShowingBrightnessAdjustCard(Landroid/widget/FrameLayout;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 61
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBrightnessAdjustCard(Landroid/widget/FrameLayout;)Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->onKeyCodeEvent(I)Z

    move-result p0

    if-ne p0, v2, :cond_8

    move p1, v2

    :cond_8
    return p1
.end method

.method private final showBrightnessAdjustCard(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 77
    new-instance v0, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;-><init>(Landroid/content/Context;)V

    .line 78
    sget p0, Ltech/rabbit/r1launcher/R$id;->id_settings_brightness_adjust_card:I

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setId(I)V

    .line 79
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    check-cast v0, Landroid/view/View;

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBind(Ltech/rabbit/r1launcher/settings/SettingItems;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;->tvLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/SettingItems;->getLabelResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method
