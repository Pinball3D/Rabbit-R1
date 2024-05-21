.class public final Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/CrossAxisAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008\u001aR\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;",
        "",
        "()V",
        "Center",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCenter$annotations",
        "getCenter",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "End",
        "getEnd$annotations",
        "getEnd",
        "Start",
        "getStart$annotations",
        "getStart",
        "AlignmentLine",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "Relative",
        "alignmentLineProvider",
        "Landroidx/compose/foundation/layout/AlignmentLineProvider;",
        "Relative$foundation_layout_release",
        "horizontal",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "horizontal$foundation_layout_release",
        "vertical",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "vertical$foundation_layout_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCenter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEnd$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStart$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final AlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    const-string p0, "alignmentLine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    new-instance v0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;-><init>(Landroidx/compose/ui/layout/AlignmentLine;)V

    check-cast v0, Landroidx/compose/foundation/layout/AlignmentLineProvider;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V

    check-cast p0, Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object p0
.end method

.method public final Relative$foundation_layout_release(Landroidx/compose/foundation/layout/AlignmentLineProvider;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    const-string p0, "alignmentLineProvider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V

    check-cast p0, Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object p0
.end method

.method public final getCenter()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 180
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getCenter$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p0

    return-object p0
.end method

.method public final getEnd()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 194
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getEnd$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p0

    return-object p0
.end method

.method public final getStart()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 187
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getStart$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p0

    return-object p0
.end method

.method public final horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    const-string p0, "horizontal"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    check-cast p0, Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object p0
.end method

.method public final vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    const-string/jumbo p0, "vertical"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    check-cast p0, Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object p0
.end method
