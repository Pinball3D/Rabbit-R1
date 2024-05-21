.class final Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposedModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "acc",
        "element",
        "Landroidx/compose/ui/Modifier$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_materialize:Landroidx/compose/runtime/Composer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/Modifier;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    instance-of v0, p2, Landroidx/compose/ui/ComposedModifier;

    if-eqz v0, :cond_0

    .line 269
    check-cast p2, Landroidx/compose/ui/ComposedModifier;

    invoke-virtual {p2}, Landroidx/compose/ui/ComposedModifier;->getFactory()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function3<androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, kotlin.Int, androidx.compose.ui.Modifier>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 270
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object v1, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->$this_materialize:Landroidx/compose/runtime/Composer;

    .line 271
    invoke-static {p0, p2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    goto :goto_0

    .line 273
    :cond_0
    move-object p0, p2

    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 266
    :goto_0
    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 265
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt$materialize$result$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
