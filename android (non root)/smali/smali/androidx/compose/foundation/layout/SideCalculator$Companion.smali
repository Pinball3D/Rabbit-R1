.class public final Landroidx/compose/foundation/layout/SideCalculator$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/SideCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0004\u0004\u0007\n\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/SideCalculator$Companion;",
        "",
        "()V",
        "BottomSideCalculator",
        "androidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1",
        "Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;",
        "LeftSideCalculator",
        "androidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1",
        "Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;",
        "RightSideCalculator",
        "androidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1",
        "Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;",
        "TopSideCalculator",
        "androidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1",
        "Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;",
        "chooseCalculator",
        "Landroidx/compose/foundation/layout/SideCalculator;",
        "side",
        "Landroidx/compose/foundation/layout/WindowInsetsSides;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "chooseCalculator-ni1skBw",
        "(ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/foundation/layout/SideCalculator;",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

.field private static final BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

.field private static final LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

.field private static final RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

.field private static final TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->$$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    .line 524
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 534
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    .line 544
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 554
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final chooseCalculator-ni1skBw(ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/foundation/layout/SideCalculator;
    .locals 0

    const-string p0, "layoutDirection"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getLeft-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    .line 508
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getTop-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    .line 509
    :cond_1
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getRight-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    .line 510
    :cond_2
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getBottom-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    .line 511
    :cond_3
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getStart-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p0, :cond_4

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 512
    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 514
    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    .line 516
    :cond_5
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getEnd-JoeWqyM()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p0, :cond_6

    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 517
    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    goto :goto_0

    :cond_6
    sget-object p0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 519
    check-cast p0, Landroidx/compose/foundation/layout/SideCalculator;

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only Left, Top, Right, Bottom, Start and End are allowed"

    .line 521
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
