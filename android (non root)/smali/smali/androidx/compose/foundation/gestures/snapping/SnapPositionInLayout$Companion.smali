.class public final Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;
.super Ljava/lang/Object;
.source "SnapPositionInLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;",
        "",
        "()V",
        "CenterToCenter",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "getCenterToCenter",
        "()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

.field private static final CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->$$INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

    .line 40
    sget-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion$CenterToCenter$1;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion$CenterToCenter$1;

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    sput-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCenterToCenter()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    return-object p0
.end method
