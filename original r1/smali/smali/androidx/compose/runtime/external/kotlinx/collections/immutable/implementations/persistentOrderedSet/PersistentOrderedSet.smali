.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;
.super Lkotlin/collections/AbstractSet;
.source "PersistentOrderedSet.kt"

# interfaces
.implements Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractSet<",
        "TE;>;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentOrderedSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentOrderedSet.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n1#1,109:1\n31#2:110\n31#2:111\n31#2:112\n31#2:113\n*S KotlinDebug\n*F\n+ 1 PersistentOrderedSet.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet\n*L\n56#1:110\n81#1:111\n85#1:112\n89#1:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \'*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\'B-\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u001b\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH\u0016J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001fJ\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0096\u0002J\u001b\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\"\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001e0%H\u0016J\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;",
        "E",
        "Lkotlin/collections/AbstractSet;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;",
        "firstElement",
        "",
        "lastElement",
        "hashMap",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;",
        "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V",
        "getFirstElement$runtime_release",
        "()Ljava/lang/Object;",
        "getHashMap$runtime_release",
        "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;",
        "getLastElement$runtime_release",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "element",
        "(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;",
        "addAll",
        "elements",
        "",
        "builder",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;",
        "clear",
        "contains",
        "",
        "(Ljava/lang/Object;)Z",
        "iterator",
        "",
        "remove",
        "removeAll",
        "predicate",
        "Lkotlin/Function1;",
        "retainAll",
        "Companion",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;

.field private static final EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;


# instance fields
.field private final firstElement:Ljava/lang/Object;

.field private final hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap<",
            "TE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;",
            ">;"
        }
    .end annotation
.end field

.field private final lastElement:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;

    .line 105
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    sget-object v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->INSTANCE:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    sget-object v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->INSTANCE:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    sget-object v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap$Companion;->emptyOf$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap<",
            "TE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hashMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lkotlin/collections/AbstractSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 37
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 41
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    invoke-direct {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object p0

    .line 42
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    invoke-direct {v0, p1, p1, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 46
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    iget-object v2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 50
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->withNext(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v1

    .line 51
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v0

    .line 52
    new-instance v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object v1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->addAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 110
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder;

    return-object p0
.end method

.method public builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    return-object v0
.end method

.method public bridge synthetic clear()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->clear()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public clear()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;

    .line 93
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;->emptyOf$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    return-object p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getFirstElement$runtime_release()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    return-object p0
.end method

.method public final getHashMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap<",
            "TE;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    return-object p0
.end method

.method public final getLastElement$runtime_release()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 32
    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetIterator;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetIterator;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 60
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    if-nez v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 62
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object p1

    .line 63
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getHasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getPrevious()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getPrevious()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getNext()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->withNext(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object p1

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getHasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getNext()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 73
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getNext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getPrevious()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->withPrevious(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object p1

    .line 75
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getHasPrevious()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getNext()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    .line 76
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getHasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->getPrevious()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    .line 77
    :goto_1
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    invoke-direct {v0, v1, p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->removeAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public bridge synthetic removeAll(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->removeAll(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public removeAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 111
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    return-object p0
.end method

.method public removeAll(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 112
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    .line 85
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 112
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->retainAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;

    return-object p0
.end method

.method public retainAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 113
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    .line 89
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object p0

    return-object p0
.end method
