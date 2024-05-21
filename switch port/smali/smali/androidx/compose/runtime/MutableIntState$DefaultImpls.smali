.class public final Landroidx/compose/runtime/MutableIntState$DefaultImpls;
.super Ljava/lang/Object;
.source "SnapshotIntState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MutableIntState;
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
.method public static getValue(Landroidx/compose/runtime/MutableIntState;)Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {p0}, Landroidx/compose/runtime/MutableIntState;->access$getValue$jd(Landroidx/compose/runtime/MutableIntState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static setValue(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0, p1}, Landroidx/compose/runtime/MutableIntState;->access$setValue$jd(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method
