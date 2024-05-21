.class final Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "maxSlotsToRetainForReuse",
        "",
        "(I)V",
        "areCompatible",
        "",
        "slotId",
        "",
        "reusableSlotId",
        "getSlotsToRetain",
        "",
        "slotIds",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final maxSlotsToRetainForReuse:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;->maxSlotsToRetainForReuse:I

    return-void
.end method


# virtual methods
.method public areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V
    .locals 2

    const-string/jumbo v0, "slotIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;->maxSlotsToRetainForReuse:I

    if-le v0, v1, :cond_1

    .line 1040
    invoke-virtual {p1}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 1042
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;->maxSlotsToRetainForReuse:I

    if-le v0, v1, :cond_0

    .line 1046
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
