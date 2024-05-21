.class public final Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;
.super Ljava/lang/Object;
.source "UiExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiExtensions.kt\ntech/rabbit/r1launcher/initstep/utils/UiExtensionsKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,57:1\n193#2,3:58\n193#2,3:61\n*S KotlinDebug\n*F\n+ 1 UiExtensions.kt\ntech/rabbit/r1launcher/initstep/utils/UiExtensionsKt\n*L\n47#1:58,3\n53#1:61,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0008\u001a\u00020\t*\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a\u0014\u0010\r\u001a\u00020\t*\u00020\u000e2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\"\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0003\"\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "dp",
        "",
        "getDp",
        "(F)F",
        "",
        "(I)I",
        "sp",
        "getSp",
        "hideKeyboard",
        "Ljava/lang/Runnable;",
        "Landroid/view/View;",
        "delayedTime",
        "",
        "showKeyboard",
        "Landroid/widget/EditText;",
        "srcTint",
        "",
        "Landroid/widget/ImageView;",
        "color",
        "app_productionEnvRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDp(F)F
    .locals 2

    .line 32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final getDp(I)I
    .locals 2

    int-to-float p0, p0

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final getSp(F)F
    .locals 2

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 36
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final getSp(I)I
    .locals 2

    int-to-float p0, p0

    .line 25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 22
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final hideKeyboard(Landroid/view/View;J)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$hideKeyboard$$inlined$postDelayed$1;-><init>(Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 62
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method public static synthetic hideKeyboard$default(Landroid/view/View;JILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xc8

    .line 53
    :cond_0
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->hideKeyboard(Landroid/view/View;J)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final showKeyboard(Landroid/widget/EditText;J)Ljava/lang/Runnable;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 58
    new-instance v1, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$showKeyboard$$inlined$postDelayed$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt$showKeyboard$$inlined$postDelayed$1;-><init>(Landroid/widget/EditText;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 59
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method public static synthetic showKeyboard$default(Landroid/widget/EditText;JILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xc8

    .line 47
    :cond_0
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->showKeyboard(Landroid/widget/EditText;J)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final srcTint(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
