.class public final Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;
.super Ljava/lang/Object;
.source "PersistentCompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentCompositionLocalMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentCompositionLocalMap.kt\nandroidx/compose/runtime/internal/PersistentCompositionLocalMapKt\n+ 2 CompositionLocalMap.kt\nandroidx/compose/runtime/CompositionLocalMapKt\n*L\n1#1,74:1\n73#2:75\n*S KotlinDebug\n*F\n+ 1 PersistentCompositionLocalMap.kt\nandroidx/compose/runtime/internal/PersistentCompositionLocalMapKt\n*L\n73#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u001aY\u0010\u0000\u001a\u00020\u00022J\u0010\u0003\u001a&\u0012\"\u0008\u0001\u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00080\u00050\u0004\"\u001e\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00080\u0005H\u0000\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "persistentCompositionLocalHashMapOf",
        "Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;",
        "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/runtime/CompositionLocal;",
        "",
        "Landroidx/compose/runtime/State;",
        "([Lkotlin/Pair;)Landroidx/compose/runtime/PersistentCompositionLocalMap;",
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


# direct methods
.method public static final varargs persistentCompositionLocalHashMapOf([Lkotlin/Pair;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;+",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Companion:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;->getEmpty()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 75
    invoke-interface {v0}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 73
    invoke-static {v1, p0}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;[Lkotlin/Pair;)V

    .line 75
    invoke-interface {v0}, Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;->build()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public static final persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Companion:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;->getEmpty()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    return-object v0
.end method
