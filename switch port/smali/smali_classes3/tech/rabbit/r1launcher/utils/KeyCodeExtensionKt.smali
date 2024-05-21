.class public final Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;
.super Ljava/lang/Object;
.source "KeyCodeExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t\u001a*\u0010\n\u001a\u00020\u0006*\u00020\u000b2\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\r\u00a8\u0006\u000f"
    }
    d2 = {
        "isKeyCodeConfirm",
        "",
        "",
        "isKeyCodeDown",
        "isKeyCodeUp",
        "setOnEnterListener",
        "",
        "Landroid/widget/EditText;",
        "onEnter",
        "Lkotlin/Function0;",
        "setOnSafeConfirmKeyListener",
        "Landroid/view/View;",
        "onSafeKey",
        "Lkotlin/Function3;",
        "Landroid/view/KeyEvent;",
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
.method public static synthetic $r8$lambda$4LZSFD96NMTs2wuVH9el3J5wHPw(Lkotlin/jvm/functions/Function0;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnEnterListener$lambda$0(Lkotlin/jvm/functions/Function0;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final isKeyCodeConfirm(I)Z
    .locals 1

    .line 13
    sget-object v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isKeyCodeDown(I)Z
    .locals 1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isKeyCodeUp(I)Z
    .locals 1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final setOnEnterListener(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private static final setOnEnterListener$lambda$0(Lkotlin/jvm/functions/Function0;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "$onEnter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 40
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return p1
.end method

.method public static final setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/KeyEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSafeKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1, v1, v2}, Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;-><init>(ILkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/view/View$OnKeyListener;

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
