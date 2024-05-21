.class public interface abstract Landroidx/compose/runtime/ControlledComposition;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/Composition;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u0008H&J \u0010\u000b\u001a\u00020\u00082\u0011\u0010\u000c\u001a\r\u0012\u0004\u0012\u00020\u00080\r\u00a2\u0006\u0002\u0008\u000eH&\u00a2\u0006\u0002\u0010\u000fJ3\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\rH&\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0019H\'J$\u0010\u001a\u001a\u00020\u00082\u001a\u0010\u001b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d0\u001cH\'J\u0008\u0010\u001f\u001a\u00020\u0008H&J\u0016\u0010 \u001a\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"H&J\u0016\u0010$\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rH&J\u0008\u0010%\u001a\u00020\u0003H&J\u0016\u0010&\u001a\u00020\u00082\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"H&J\u0010\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020#H&J\u0010\u0010)\u001a\u00020\u00082\u0006\u0010(\u001a\u00020#H&J\u0008\u0010*\u001a\u00020\u0008H\'R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005\u0082\u0001\u0001+\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006,\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/ControlledComposition;",
        "Landroidx/compose/runtime/Composition;",
        "hasPendingChanges",
        "",
        "getHasPendingChanges",
        "()Z",
        "isComposing",
        "applyChanges",
        "",
        "applyLateChanges",
        "changesApplied",
        "composeContent",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "delegateInvalidations",
        "R",
        "to",
        "groupIndex",
        "",
        "block",
        "(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "disposeUnusedMovableContent",
        "state",
        "Landroidx/compose/runtime/MovableContentState;",
        "insertMovableContent",
        "references",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "invalidateAll",
        "observesAnyOf",
        "values",
        "",
        "",
        "prepareCompose",
        "recompose",
        "recordModificationsOf",
        "recordReadOf",
        "value",
        "recordWriteOf",
        "verifyConsistent",
        "Landroidx/compose/runtime/CompositionImpl;",
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
.method public abstract applyChanges()V
.end method

.method public abstract applyLateChanges()V
.end method

.method public abstract changesApplied()V
.end method

.method public abstract composeContent(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V
.end method

.method public abstract getHasPendingChanges()Z
.end method

.method public abstract insertMovableContent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract invalidateAll()V
.end method

.method public abstract isComposing()Z
.end method

.method public abstract observesAnyOf(Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract prepareCompose(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recompose()Z
.end method

.method public abstract recordModificationsOf(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recordReadOf(Ljava/lang/Object;)V
.end method

.method public abstract recordWriteOf(Ljava/lang/Object;)V
.end method

.method public abstract verifyConsistent()V
.end method
