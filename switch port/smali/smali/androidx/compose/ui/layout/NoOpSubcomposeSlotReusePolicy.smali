.class final Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "()V",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;

    invoke-direct {v0}, Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;->INSTANCE:Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V
    .locals 0

    const-string/jumbo p0, "slotIds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->clear()V

    return-void
.end method
