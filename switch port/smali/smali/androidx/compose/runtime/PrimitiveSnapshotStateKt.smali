.class public final Landroidx/compose/runtime/PrimitiveSnapshotStateKt;
.super Ljava/lang/Object;
.source "SnapshotFloatState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "androidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getValue(Landroidx/compose/runtime/FloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/FloatState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->getValue(Landroidx/compose/runtime/FloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)F

    move-result p0

    return p0
.end method

.method public static final mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableFloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt;->setValue(Landroidx/compose/runtime/MutableFloatState;Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V

    return-void
.end method
