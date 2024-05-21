.class public final Landroidx/compose/foundation/text/KeyMapping_androidKt;
.super Ljava/lang/Object;
.source "KeyMapping.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "platformDefaultKeyMapping",
        "Landroidx/compose/foundation/text/KeyMapping;",
        "getPlatformDefaultKeyMapping",
        "()Landroidx/compose/foundation/text/KeyMapping;",
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
.field private static final platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1;-><init>()V

    check-cast v0, Landroidx/compose/foundation/text/KeyMapping;

    sput-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-void
.end method

.method public static final getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-object v0
.end method
