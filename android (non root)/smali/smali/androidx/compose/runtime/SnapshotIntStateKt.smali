.class public final Landroidx/compose/runtime/SnapshotIntStateKt;
.super Ljava/lang/Object;
.source "SnapshotIntState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "androidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt"
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
.method public static final getValue(Landroidx/compose/runtime/IntState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/IntState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt;->getValue(Landroidx/compose/runtime/IntState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result p0

    return p0
.end method

.method public static final mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableIntState;Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableIntState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt;->setValue(Landroidx/compose/runtime/MutableIntState;Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method
