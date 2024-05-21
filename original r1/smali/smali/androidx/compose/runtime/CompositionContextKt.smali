.class public final Landroidx/compose/runtime/CompositionContextKt;
.super Ljava/lang/Object;
.source "CompositionContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "EmptyPersistentCompositionLocalMap",
        "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sput-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public static final synthetic access$getEmptyPersistentCompositionLocalMap$p()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0
.end method
