.class public interface abstract Landroidx/compose/runtime/saveable/SaveableStateRegistry;
.super Ljava/lang/Object;
.source "SaveableStateRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u000fJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H&J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n0\tH&J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0010\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
        "",
        "canBeSaved",
        "",
        "value",
        "consumeRestored",
        "key",
        "",
        "performSave",
        "",
        "",
        "registerProvider",
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;",
        "valueProvider",
        "Lkotlin/Function0;",
        "Entry",
        "runtime-saveable_release"
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
.method public abstract canBeSaved(Ljava/lang/Object;)Z
.end method

.method public abstract consumeRestored(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract performSave()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;"
        }
    .end annotation
.end method
