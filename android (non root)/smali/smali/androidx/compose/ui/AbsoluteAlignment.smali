.class public final Landroidx/compose/ui/AbsoluteAlignment;
.super Ljava/lang/Object;
.source "Alignment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0007R\u001c\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0002\u001a\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0002\u001a\u0004\u0008\u001b\u0010\u0007R\u001c\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0002\u001a\u0004\u0008\u001e\u0010\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/ui/AbsoluteAlignment;",
        "",
        "()V",
        "BottomLeft",
        "Landroidx/compose/ui/Alignment;",
        "getBottomLeft$annotations",
        "getBottomLeft",
        "()Landroidx/compose/ui/Alignment;",
        "BottomRight",
        "getBottomRight$annotations",
        "getBottomRight",
        "CenterLeft",
        "getCenterLeft$annotations",
        "getCenterLeft",
        "CenterRight",
        "getCenterRight$annotations",
        "getCenterRight",
        "Left",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "getLeft$annotations",
        "getLeft",
        "()Landroidx/compose/ui/Alignment$Horizontal;",
        "Right",
        "getRight$annotations",
        "getRight",
        "TopLeft",
        "getTopLeft$annotations",
        "getTopLeft",
        "TopRight",
        "getTopRight$annotations",
        "getTopRight",
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
.field public static final $stable:I

.field private static final BottomLeft:Landroidx/compose/ui/Alignment;

.field private static final BottomRight:Landroidx/compose/ui/Alignment;

.field private static final CenterLeft:Landroidx/compose/ui/Alignment;

.field private static final CenterRight:Landroidx/compose/ui/Alignment;

.field public static final INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

.field private static final Left:Landroidx/compose/ui/Alignment$Horizontal;

.field private static final Right:Landroidx/compose/ui/Alignment$Horizontal;

.field private static final TopLeft:Landroidx/compose/ui/Alignment;

.field private static final TopRight:Landroidx/compose/ui/Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/AbsoluteAlignment;

    invoke-direct {v0}, Landroidx/compose/ui/AbsoluteAlignment;-><init>()V

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    .line 123
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopLeft:Landroidx/compose/ui/Alignment;

    .line 125
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopRight:Landroidx/compose/ui/Alignment;

    .line 127
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterLeft:Landroidx/compose/ui/Alignment;

    .line 129
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterRight:Landroidx/compose/ui/Alignment;

    .line 131
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomLeft:Landroidx/compose/ui/Alignment;

    .line 133
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/Alignment;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomRight:Landroidx/compose/ui/Alignment;

    .line 137
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/Alignment$Horizontal;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Left:Landroidx/compose/ui/Alignment$Horizontal;

    .line 139
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;-><init>(F)V

    check-cast v0, Landroidx/compose/ui/Alignment$Horizontal;

    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Right:Landroidx/compose/ui/Alignment$Horizontal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBottomLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBottomRight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCenterLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCenterRight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTopLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTopRight$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getBottomLeft()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->BottomLeft:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getBottomRight()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->BottomRight:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenterLeft()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->CenterLeft:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenterRight()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->CenterRight:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getLeft()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->Left:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getRight()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->Right:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getTopLeft()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->TopLeft:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getTopRight()Landroidx/compose/ui/Alignment;
    .locals 0

    sget-object p0, Landroidx/compose/ui/AbsoluteAlignment;->TopRight:Landroidx/compose/ui/Alignment;

    return-object p0
.end method
