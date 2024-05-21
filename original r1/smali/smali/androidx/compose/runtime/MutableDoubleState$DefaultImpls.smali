.class public final Landroidx/compose/runtime/MutableDoubleState$DefaultImpls;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MutableDoubleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getValue(Landroidx/compose/runtime/MutableDoubleState;)Ljava/lang/Double;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {p0}, Landroidx/compose/runtime/MutableDoubleState;->access$getValue$jd(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static setValue(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->access$setValue$jd(Landroidx/compose/runtime/MutableDoubleState;D)V

    return-void
.end method
