.class public interface abstract Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
.super Ljava/lang/Object;
.source "ImmutableCollection.kt"

# interfaces
.implements Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008`\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012J\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0004\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H&J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH&J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H&J\u001b\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0004\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0005J\"\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000fH&J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H&J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0013\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;",
        "E",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;",
        "add",
        "element",
        "(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;",
        "addAll",
        "elements",
        "",
        "builder",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder;",
        "clear",
        "remove",
        "removeAll",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "retainAll",
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
.method public abstract add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection$Builder<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract clear()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract removeAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract removeAll(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract retainAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentCollection<",
            "TE;>;"
        }
    .end annotation
.end method
