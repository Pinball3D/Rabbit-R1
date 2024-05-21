.class public final Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;
.super Landroidx/fragment/app/Fragment;
.source "EnterWifiPasswordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWifiPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWifiPasswordFragment.kt\ntech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,112:1\n58#2,23:113\n93#2,3:136\n329#3,2:139\n331#3,2:149\n329#3,2:151\n331#3,2:161\n142#4,8:141\n142#4,8:153\n*S KotlinDebug\n*F\n+ 1 EnterWifiPasswordFragment.kt\ntech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment\n*L\n47#1:113,23\n47#1:136,3\n74#1:139,2\n74#1:149,2\n82#1:151,2\n82#1:161,2\n74#1:141,8\n82#1:153,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u000eH\u0016J\u001a\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006%"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "etPassword",
        "Landroid/widget/EditText;",
        "tvState",
        "Landroid/widget/TextView;",
        "wifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "getWifi",
        "()Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "setWifi",
        "(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V",
        "applyEnteredPasswordStyle",
        "",
        "applyNoEnterPasswordStyle",
        "connectWifi",
        "password",
        "",
        "isTargetValues",
        "",
        "letterSpacing",
        "",
        "textSize",
        "marginTop",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
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
.field private etPassword:Landroid/widget/EditText;

.field private tvState:Landroid/widget/TextView;

.field public wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;


# direct methods
.method public static synthetic $r8$lambda$5xH4rgqAQz9Jy_oPZsPHQBHabbU(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->onViewCreated$lambda$4(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8BcMlgCpC-mnz7NNrXQEjuObeU(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->onPause$hideKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVcduT9CFXzV6NZYbZyw1wRPvVg(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->onCreateView$lambda$1(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_enter_wifi_password:I

    .line 26
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$applyEnteredPasswordStyle(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->applyEnteredPasswordStyle()V

    return-void
.end method

.method public static final synthetic access$applyNoEnterPasswordStyle(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->applyNoEnterPasswordStyle()V

    return-void
.end method

.method public static final synthetic access$connectWifi(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->connectWifi(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getEtPassword$p(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method private final applyEnteredPasswordStyle()V
    .locals 6

    const/high16 v0, 0x41f00000    # 30.0f

    .line 78
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getSp(F)F

    move-result v1

    const/16 v2, 0x11

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    const v4, 0x3da3d70a    # 0.08f

    invoke-direct {p0, v4, v1, v3}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->isTargetValues(FFI)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const/4 v3, 0x0

    const-string v5, "etPassword"

    if-nez v1, :cond_1

    .line 80
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setLetterSpacing(F)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 81
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p0, :cond_3

    .line 82
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    check-cast v3, Landroid/view/View;

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 152
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    .line 154
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 156
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 157
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 151
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final applyNoEnterPasswordStyle()V
    .locals 6

    const/high16 v0, 0x41c00000    # 24.0f

    .line 70
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getSp(F)F

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    const v4, 0x3cf5c28f    # 0.03f

    invoke-direct {p0, v4, v1, v3}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->isTargetValues(FFI)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const/4 v3, 0x0

    const-string v5, "etPassword"

    if-nez v1, :cond_1

    .line 72
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setLetterSpacing(F)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 73
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p0, :cond_3

    .line 74
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    check-cast v3, Landroid/view/View;

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 140
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    .line 142
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 145
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 147
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final connectWifi(Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    if-eqz v1, :cond_0

    check-cast v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoWifiDetail(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final isTargetValues(FFI)Z
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const-string v1, "etPassword"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 86
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result v0

    cmpg-float p1, v0, p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p1, :cond_1

    .line 87
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    cmpg-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p0, :cond_2

    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_3

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    :cond_3
    if-eqz v2, :cond_4

    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-ne p0, p3, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final onCreateView$lambda$1(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 54
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->connectWifi(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final synthetic onPause$hideKeyboard(Landroid/widget/EditText;)V
    .locals 4

    .line 104
    check-cast p0, Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->hideKeyboard$default(Landroid/view/View;JILjava/lang/Object;)Ljava/lang/Runnable;

    return-void
.end method

.method private static final onViewCreated$lambda$4(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const-string v1, "etPassword"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 99
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->showKeyboard$default(Landroid/widget/EditText;JILjava/lang/Object;)Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "wifi"

    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 42
    :cond_0
    sget p3, Ltech/rabbit/r1launcher/R$id;->tv_state:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->tvState:Landroid/widget/TextView;

    .line 43
    sget p3, Ltech/rabbit/r1launcher/R$id;->et_password:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    .line 45
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->applyNoEnterPasswordStyle()V

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const-string v0, "etPassword"

    if-nez p3, :cond_1

    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_1
    check-cast p3, Landroid/widget/TextView;

    .line 135
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$onCreateView$$inlined$doAfterTextChanged$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$onCreateView$$inlined$doAfterTextChanged$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V

    .line 136
    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p3, :cond_2

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_2
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p3, :cond_3

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p3

    :goto_0
    check-cast p2, Landroid/view/View;

    new-instance p3, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$onCreateView$3;

    invoke-direct {p3, p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$onCreateView$3;-><init>(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V

    check-cast p3, Lkotlin/jvm/functions/Function3;

    invoke-static {p2, p3}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-object p1
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "etPassword"

    if-nez v0, :cond_0

    .line 104
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    new-instance v2, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->tvState:Landroid/widget/TextView;

    const-string p2, "tvState"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->tvState:Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 95
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->etPassword:Landroid/widget/EditText;

    if-nez p1, :cond_2

    const-string p1, "etPassword"

    .line 97
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    new-instance p1, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-void
.end method
