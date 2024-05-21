.class public final enum Landroidx/compose/foundation/text/HandleState;
.super Ljava/lang/Enum;
.source "CoreTextField.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/text/HandleState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/foundation/text/HandleState;",
        "",
        "(Ljava/lang/String;I)V",
        "None",
        "Selection",
        "Cursor",
        "foundation_release"
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
.field private static final synthetic $VALUES:[Landroidx/compose/foundation/text/HandleState;

.field public static final enum Cursor:Landroidx/compose/foundation/text/HandleState;

.field public static final enum None:Landroidx/compose/foundation/text/HandleState;

.field public static final enum Selection:Landroidx/compose/foundation/text/HandleState;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/foundation/text/HandleState;
    .locals 3

    sget-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    sget-object v1, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    sget-object v2, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    filled-new-array {v0, v1, v2}, [Landroidx/compose/foundation/text/HandleState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 720
    new-instance v0, Landroidx/compose/foundation/text/HandleState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 728
    new-instance v0, Landroidx/compose/foundation/text/HandleState;

    const-string v1, "Selection"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 737
    new-instance v0, Landroidx/compose/foundation/text/HandleState;

    const-string v1, "Cursor"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    invoke-static {}, Landroidx/compose/foundation/text/HandleState;->$values()[Landroidx/compose/foundation/text/HandleState;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/HandleState;->$VALUES:[Landroidx/compose/foundation/text/HandleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/text/HandleState;
    .locals 1

    const-class v0, Landroidx/compose/foundation/text/HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/HandleState;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/text/HandleState;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/HandleState;->$VALUES:[Landroidx/compose/foundation/text/HandleState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/text/HandleState;

    return-object v0
.end method
