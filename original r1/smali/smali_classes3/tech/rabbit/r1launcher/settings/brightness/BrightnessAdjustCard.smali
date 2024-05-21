.class public final Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;
.super Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;
.source "BrightnessAdjustCard.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\"\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u0012\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\tH\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;",
        "Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "addValue",
        "",
        "getCurrentValue",
        "getMaxValue",
        "getMinValue",
        "getSystemBrightness",
        "initView",
        "minusValue",
        "setScreenManualMode",
        "setSystemBrightness",
        "brightness",
        "setValuePercent",
        "currentValue",
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
.method public static synthetic $r8$lambda$lGw15eItX224ZH03ehOMnfl2PdI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->initView$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getSystemBrightness(Landroid/content/Context;)I
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    .line 102
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 103
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMaxBasicValue()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMaxBasicValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method private static final initView$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final setScreenManualMode(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 26
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    const-string p0, "screen_brightness"

    .line 27
    invoke-static {p1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "screen_brightness_mode"

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final setSystemBrightness(Landroid/content/Context;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setScreenManualMode(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_brightness"

    .line 112
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public addValue()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getCurrentValue()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getGapBasicValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMaxBasicValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMaxBasicValue()I

    move-result v0

    .line 68
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    .line 69
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setSystemBrightness(Landroid/content/Context;I)V

    .line 70
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setValuePercent(I)V

    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v2}, LAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getCurrentValue()I
    .locals 2

    .line 132
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getSystemBrightness(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMaxValue()I
    .locals 4

    .line 126
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    const-string v2, "android"

    const-string v3, "config_screenBrightnessSettingMaximum"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getMinValue()I
    .locals 4

    .line 118
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    const-string v2, "android"

    const-string v3, "config_screenBrightnessSettingMinimum"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setScreenManualMode(Landroid/content/Context;)V

    .line 40
    invoke-super {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x1000000

    .line 41
    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setBackgroundColor(I)V

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getSettingTitle()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget p3, Ltech/rabbit/r1launcher/R$string;->settings_page_brightness:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p2, Ltech/rabbit/r1launcher/R$drawable;->ic_brightness_settings:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 p2, 0x24

    .line 45
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 46
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getIconView()Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :goto_2
    new-instance p1, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public minusValue()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getCurrentValue()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getGapBasicValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 84
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMinBasicValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMinBasicValue()I

    move-result v0

    .line 87
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;

    .line 88
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setSystemBrightness(Landroid/content/Context;I)V

    .line 89
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->setValuePercent(I)V

    return-void

    .line 90
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v2}, LAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setValuePercent(I)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;->setValuePercent(I)V

    int-to-float p1, p1

    .line 53
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42ac0000    # 86.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getMaxBasicValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 54
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$color;->black:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$color;->white:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
