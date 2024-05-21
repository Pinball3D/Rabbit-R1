.class final Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazySaveableStateHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion;->saver(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;>;",
        "Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;",
        "restored",
        "",
        "",
        "",
        "",
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
.field final synthetic $parentRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$2;->$parentRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/Map;)Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;"
        }
    .end annotation

    const-string v0, "restored"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$2;->$parentRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion$saver$2;->invoke(Ljava/util/Map;)Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    move-result-object p0

    return-object p0
.end method
