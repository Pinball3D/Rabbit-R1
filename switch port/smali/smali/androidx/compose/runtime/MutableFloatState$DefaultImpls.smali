.class public final Landroidx/compose/runtime/MutableFloatState$DefaultImpls;
.super Ljava/lang/Object;
.source "SnapshotFloatState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MutableFloatState;
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
.method public static getValue(Landroidx/compose/runtime/MutableFloatState;)Ljava/lang/Float;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {p0}, Landroidx/compose/runtime/MutableFloatState;->access$getValue$jd(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static setValue(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->access$setValue$jd(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method
