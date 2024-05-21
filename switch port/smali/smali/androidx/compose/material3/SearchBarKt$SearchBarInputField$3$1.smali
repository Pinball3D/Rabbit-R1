.class final Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $active:Z

.field final synthetic $focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field final synthetic $searchSemantics:Ljava/lang/String;

.field final synthetic $suggestionsAvailableSemantics:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$searchSemantics:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$active:Z

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$suggestionsAvailableSemantics:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 452
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$searchSemantics:Ljava/lang/String;

    .line 453
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$suggestionsAvailableSemantics:Ljava/lang/String;

    .line 455
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 457
    :cond_0
    new-instance v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1$1;

    iget-object p0, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0, p0}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$3$1$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
