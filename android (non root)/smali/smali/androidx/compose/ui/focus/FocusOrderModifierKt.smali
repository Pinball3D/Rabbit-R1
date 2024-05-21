.class public final Landroidx/compose/ui/focus/FocusOrderModifierKt;
.super Ljava/lang/Object;
.source "FocusOrderModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0007\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "focusOrder",
        "Landroidx/compose/ui/Modifier;",
        "focusOrderReceiver",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusOrder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use focusRequester() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.focusRequester(focusRequester)"
            imports = {
                "androidx.compose.ui.focus.focusRequester"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use focusProperties() and focusRequester() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.focusRequester(focusRequester).focusProperties(focusOrderReceiver)"
            imports = {
                "androidx.compose.ui.focus.focusProperties, androidx.compose.ui.focus.focusRequester"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusOrderReceiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 193
    new-instance p1, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {p1, p2}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use focusProperties() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.focusProperties(focusOrderReceiver)"
            imports = {
                "androidx.compose.ui.focus.focusProperties"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusOrderReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
