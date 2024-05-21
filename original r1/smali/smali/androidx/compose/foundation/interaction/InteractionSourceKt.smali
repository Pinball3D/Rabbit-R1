.class public final Landroidx/compose/foundation/interaction/InteractionSourceKt;
.super Ljava/lang/Object;
.source "InteractionSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "MutableInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 127
    new-instance v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method
