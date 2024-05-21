.class final Landroidx/compose/foundation/layout/ConsumedInsetsModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "WindowInsetsPadding.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B2\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/ConsumedInsetsModifier;",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "",
        "inspectorInfo",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "oldWindowInsets",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "onModifierLocalsUpdated",
        "scope",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;

    iget-object p1, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->getModifierLocalConsumedWindowInsets()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 278
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    .line 280
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
