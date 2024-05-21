.class public final Landroidx/compose/runtime/MutableLongState$DefaultImpls;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MutableLongState;
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
.method public static getValue(Landroidx/compose/runtime/MutableLongState;)Ljava/lang/Long;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0}, Landroidx/compose/runtime/MutableLongState;->access$getValue$jd(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static setValue(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->access$setValue$jd(Landroidx/compose/runtime/MutableLongState;J)V

    return-void
.end method
