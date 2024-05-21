.class public final Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;
.super Ltech/rabbit/r1launcher/settings/holder/BaseHolder;
.source "EnableTerminalSettingHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnableTerminalSettingHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnableTerminalSettingHolder.kt\ntech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,40:1\n329#2,4:41\n*S KotlinDebug\n*F\n+ 1 EnableTerminalSettingHolder.kt\ntech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder\n*L\n22#1:41,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;",
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;",
        "getBinding",
        "()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;",
        "onBind",
        "",
        "item",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
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

    .line 14
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;-><init>(Landroid/view/View;)V

    .line 19
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    .line 20
    new-instance p1, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    new-instance v0, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder$1$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder$1$2;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;
    .locals 1

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;

    move-result-object p0

    const-string v0, "bind(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static final lambda$2$lambda$1(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Z)V
    .locals 2

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 21
    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {p0, v1, v0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 22
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    const/16 v1, 0x24

    goto :goto_2

    :cond_2
    const/16 v1, 0x1d

    .line 23
    :goto_2
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_3

    const/high16 p1, 0x41f00000    # 30.0f

    goto :goto_3

    :cond_3
    const/high16 p1, 0x41c00000    # 24.0f

    .line 25
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    if-eqz p2, :cond_4

    .line 26
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toFocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    goto :goto_4

    :cond_4
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toUnfocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    :goto_4
    return-void

    .line 41
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBind(Ltech/rabbit/r1launcher/settings/SettingItems;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/SettingItems;->getLabelResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 38
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;->getBinding()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    sget-object p1, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {p1}, LAppConfig;->isEnabledTerminal()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setActivated(Z)V

    return-void
.end method
