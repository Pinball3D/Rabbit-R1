.class public final Ltech/rabbit/r1launcher/widget/SettingLoading;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SettingLoading.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingLoading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingLoading.kt\ntech/rabbit/r1launcher/widget/SettingLoading\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,62:1\n260#2:63\n*S KotlinDebug\n*F\n+ 1 SettingLoading.kt\ntech/rabbit/r1launcher/widget/SettingLoading\n*L\n24#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0012\u0010\n\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/SettingLoading;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "setImageTintList",
        "tint",
        "Landroid/content/res/ColorStateList;",
        "setVisibility",
        "visibility",
        "",
        "startAnimation",
        "stopAnimation",
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Ltech/rabbit/r1launcher/widget/SettingLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget p2, Ltech/rabbit/r1launcher/R$drawable;->ic_loading:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingLoading;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final startAnimation()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->stopAnimation()V

    .line 54
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$anim;->rotate_loading:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 53
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final stopAnimation()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->clearAnimation()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 22
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 24
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->stopAnimation()V

    .line 30
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->stopAnimation()V

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->startAnimation()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 37
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->startAnimation()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingLoading;->stopAnimation()V

    :goto_0
    return-void
.end method
