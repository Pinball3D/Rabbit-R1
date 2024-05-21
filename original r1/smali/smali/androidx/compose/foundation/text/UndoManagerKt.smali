.class public final Landroidx/compose/foundation/text/UndoManagerKt;
.super Ljava/lang/Object;
.source "UndoManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "SNAPSHOTS_INTERVAL_MILLIS",
        "",
        "getSNAPSHOTS_INTERVAL_MILLIS",
        "()I",
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


# static fields
.field private static final SNAPSHOTS_INTERVAL_MILLIS:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSNAPSHOTS_INTERVAL_MILLIS()I
    .locals 1

    sget v0, Landroidx/compose/foundation/text/UndoManagerKt;->SNAPSHOTS_INTERVAL_MILLIS:I

    return v0
.end method
