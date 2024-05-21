.class public final enum Landroidx/compose/foundation/layout/IntrinsicSize;
.super Ljava/lang/Enum;
.source "Intrinsic.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/layout/IntrinsicSize;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/IntrinsicSize;",
        "",
        "(Ljava/lang/String;I)V",
        "Min",
        "Max",
        "foundation-layout_release"
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
.field private static final synthetic $VALUES:[Landroidx/compose/foundation/layout/IntrinsicSize;

.field public static final enum Max:Landroidx/compose/foundation/layout/IntrinsicSize;

.field public static final enum Min:Landroidx/compose/foundation/layout/IntrinsicSize;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/foundation/layout/IntrinsicSize;
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    sget-object v1, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    filled-new-array {v0, v1}, [Landroidx/compose/foundation/layout/IntrinsicSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicSize;

    const-string v1, "Min"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/IntrinsicSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicSize;

    const-string v1, "Max"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/IntrinsicSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {}, Landroidx/compose/foundation/layout/IntrinsicSize;->$values()[Landroidx/compose/foundation/layout/IntrinsicSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->$VALUES:[Landroidx/compose/foundation/layout/IntrinsicSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/layout/IntrinsicSize;
    .locals 1

    const-class v0, Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/IntrinsicSize;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/layout/IntrinsicSize;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->$VALUES:[Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/layout/IntrinsicSize;

    return-object v0
.end method
