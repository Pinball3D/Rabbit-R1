.class final Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;
.super Ljava/lang/Object;
.source "PagerState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "<anonymous parameter 0>",
        "<anonymous parameter 1>",
        "<anonymous parameter 2>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;

    invoke-direct {v0}, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;->INSTANCE:Landroidx/compose/foundation/pager/PagerStateKt$SnapAlignmentStartToStart$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final position(Landroidx/compose/ui/unit/Density;III)I
    .locals 0

    const-string p0, "$this$SnapPositionInLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
