.class public final Landroidx/compose/foundation/text/UndoManager_jvmKt;
.super Ljava/lang/Object;
.source "UndoManager.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "timeNowMillis",
        "",
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
.method public static final timeNowMillis()J
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
