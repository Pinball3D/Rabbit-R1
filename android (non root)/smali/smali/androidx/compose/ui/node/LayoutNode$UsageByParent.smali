.class public final enum Landroidx/compose/ui/node/LayoutNode$UsageByParent;
.super Ljava/lang/Enum;
.source "LayoutNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsageByParent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/node/LayoutNode$UsageByParent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/node/LayoutNode$UsageByParent;",
        "",
        "(Ljava/lang/String;I)V",
        "InMeasureBlock",
        "InLayoutBlock",
        "NotUsed",
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
.field private static final synthetic $VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 3

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    filled-new-array {v0, v1, v2}, [Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1437
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v1, "InMeasureBlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1438
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v1, "InLayoutBlock"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1439
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v1, "NotUsed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->$values()[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->$VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    const-class v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->$VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object v0
.end method
