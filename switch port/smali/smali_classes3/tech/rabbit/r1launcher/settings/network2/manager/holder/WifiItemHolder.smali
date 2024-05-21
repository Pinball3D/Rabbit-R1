.class public final Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;
.super Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;
.source "WifiItemHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiItemHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiItemHolder.kt\ntech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,43:1\n329#2,4:44\n*S KotlinDebug\n*F\n+ 1 WifiItemHolder.kt\ntech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder\n*L\n19#1:44,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;",
        "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;",
        "(Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;)V",
        "onBind",
        "",
        "item",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
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
.field private final binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;


# direct methods
.method public static synthetic $r8$lambda$0hoEw5hQOOfbf5jTUxIcQYM0EQ4(Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->_init_$lambda$1(Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    .line 17
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final _init_$lambda$1(Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;Landroid/view/View;Z)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v2, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 19
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    const/16 v2, 0x28

    goto :goto_2

    :cond_2
    const/16 v2, 0x21

    .line 20
    :goto_2
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 25
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_focused_radio_button:I

    goto :goto_3

    :cond_3
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_unfocused_radio_button:I

    .line 22
    :goto_3
    invoke-virtual {p1, v1, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 28
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    if-eqz p2, :cond_4

    const/high16 p1, 0x41f00000    # 30.0f

    goto :goto_4

    :cond_4
    const/high16 p1, 0x41c00000    # 24.0f

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    return-void

    .line 44
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBind(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    .line 40
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setActivated(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;->binding:Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;

    .line 41
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
