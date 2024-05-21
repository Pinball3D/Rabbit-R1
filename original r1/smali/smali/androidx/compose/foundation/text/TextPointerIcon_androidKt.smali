.class public final Landroidx/compose/foundation/text/TextPointerIcon_androidKt;
.super Ljava/lang/Object;
.source "TextPointerIcon.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "textPointerIcon",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "getTextPointerIcon",
        "()Landroidx/compose/ui/input/pointer/PointerIcon;",
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
.field private static final textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3f0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->PointerIcon(I)Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-void
.end method

.method public static final getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object v0
.end method
