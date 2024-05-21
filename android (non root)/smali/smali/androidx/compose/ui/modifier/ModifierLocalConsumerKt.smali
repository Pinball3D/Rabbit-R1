.class public final Landroidx/compose/ui/modifier/ModifierLocalConsumerKt;
.super Ljava/lang/Object;
.source "ModifierLocalConsumer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalConsumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalConsumer.kt\nandroidx/compose/ui/modifier/ModifierLocalConsumerKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,74:1\n135#2:75\n*S KotlinDebug\n*F\n+ 1 ModifierLocalConsumer.kt\nandroidx/compose/ui/modifier/ModifierLocalConsumerKt\n*L\n51#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "modifierLocalConsumer",
        "Landroidx/compose/ui/Modifier;",
        "consumer",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static final modifierLocalConsumer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroidx/compose/ui/modifier/ModifierLocalConsumerImpl;

    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/ui/modifier/ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/ui/modifier/ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 49
    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/modifier/ModifierLocalConsumerImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 48
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
