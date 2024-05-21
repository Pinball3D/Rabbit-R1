.class public final enum Landroidx/compose/ui/unit/LayoutDirection;
.super Ljava/lang/Enum;
.source "LayoutDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "",
        "(Ljava/lang/String;I)V",
        "Ltr",
        "Rtl",
        "ui-unit_release"
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
.field private static final synthetic $VALUES:[Landroidx/compose/ui/unit/LayoutDirection;

.field public static final enum Ltr:Landroidx/compose/ui/unit/LayoutDirection;

.field public static final enum Rtl:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/unit/LayoutDirection;
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    filled-new-array {v0, v1}, [Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Landroidx/compose/ui/unit/LayoutDirection;

    const-string v1, "Ltr"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 33
    new-instance v0, Landroidx/compose/ui/unit/LayoutDirection;

    const-string v1, "Rtl"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {}, Landroidx/compose/ui/unit/LayoutDirection;->$values()[Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/unit/LayoutDirection;->$VALUES:[Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    const-class v0, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->$VALUES:[Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method
