.class public final Landroidx/compose/runtime/SnapshotDoubleStateKt;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "androidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt"
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
.method public static final getValue(Landroidx/compose/runtime/DoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DoubleState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt;->getValue(Landroidx/compose/runtime/DoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final mutableDoubleStateOf(D)Landroidx/compose/runtime/MutableDoubleState;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt;->mutableDoubleStateOf(D)Landroidx/compose/runtime/MutableDoubleState;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableDoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;D)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt;->setValue(Landroidx/compose/runtime/MutableDoubleState;Ljava/lang/Object;Lkotlin/reflect/KProperty;D)V

    return-void
.end method
