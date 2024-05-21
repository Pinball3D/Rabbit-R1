.class public interface abstract Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
.super Ljava/lang/Object;
.source "ImmutableMap.kt"

# interfaces
.implements Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0004\u0008`\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001\u0010J\u0014\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H&J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H&J)\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0014\u0010\u000c\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rH&J!\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0008\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000fJ)\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;",
        "K",
        "V",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableMap;",
        "builder",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;",
        "clear",
        "put",
        "key",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;",
        "putAll",
        "m",
        "",
        "remove",
        "(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;",
        "Builder",
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


# virtual methods
.method public abstract builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract clear()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract putAll(Ljava/util/Map;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
