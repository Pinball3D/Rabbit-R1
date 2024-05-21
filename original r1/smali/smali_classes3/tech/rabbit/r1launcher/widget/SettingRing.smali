.class public final Ltech/rabbit/r1launcher/widget/SettingRing;
.super Landroid/widget/FrameLayout;
.source "SettingRing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0012J\u0006\u0010\u0017\u001a\u00020\u0012R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/SettingRing;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;",
        "getBinding",
        "()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;",
        "setBinding",
        "(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V",
        "setLoadingTint",
        "",
        "color",
        "showLoading",
        "showOnConfirm",
        "showOnFocus",
        "showOnNormal",
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
.field public binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;


# direct methods
.method public static synthetic $r8$lambda$I3Gf3jOSRKSieWQHhOI-9PtrpyA(Ltech/rabbit/r1launcher/widget/SettingRing;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->setLoadingTint$lambda$0(Ltech/rabbit/r1launcher/widget/SettingRing;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_ring:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->setBinding(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V

    .line 26
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$layout;->layout_setting_ring:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p2

    const-string v0, "bind(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setBinding(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V

    .line 26
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$layout;->layout_setting_ring:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p2

    const-string p3, "bind(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setBinding(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V

    .line 26
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final setLoadingTint$lambda$0(Ltech/rabbit/r1launcher/widget/SettingRing;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingRing;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setBinding(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingRing;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    return-void
.end method

.method public final setLoadingTint(I)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLoadingTint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    new-instance v1, Ltech/rabbit/r1launcher/widget/SettingRing$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/widget/SettingRing$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/SettingRing;I)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showLoading()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setVisibility(I)V

    return-void
.end method

.method public final showOnConfirm()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ltech/rabbit/r1launcher/R$drawable;->shape_setting_ring_confrim:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final showOnFocus()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ltech/rabbit/r1launcher/R$drawable;->shape_setting_ring_selected:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final showOnNormal()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->sl:Ltech/rabbit/r1launcher/widget/SettingLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getBinding()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;->vRing:Landroid/view/View;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ltech/rabbit/r1launcher/R$drawable;->shape_setting_ring:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
