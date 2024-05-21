.class interface abstract Landroidx/compose/foundation/layout/SideCalculator;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/SideCalculator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0008c\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u001d\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH&J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0003H&\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u001a\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/SideCalculator;",
        "",
        "adjustInsets",
        "Landroid/graphics/Insets;",
        "oldInsets",
        "newValue",
        "",
        "consumedOffsets",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "consumedOffsets-MK-Hz9U",
        "(J)J",
        "consumedVelocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "remaining",
        "",
        "consumedVelocity-QWom1Mo",
        "(JF)J",
        "hideMotion",
        "x",
        "y",
        "motionOf",
        "showMotion",
        "valueOf",
        "insets",
        "Companion",
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
.field public static final Companion:Landroidx/compose/foundation/layout/SideCalculator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->$$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator;->Companion:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    return-void
.end method


# virtual methods
.method public abstract adjustInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
.end method

.method public abstract consumedOffsets-MK-Hz9U(J)J
.end method

.method public abstract consumedVelocity-QWom1Mo(JF)J
.end method

.method public hideMotion(FF)F
    .locals 0

    .line 483
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0
.end method

.method public abstract motionOf(FF)F
.end method

.method public showMotion(FF)F
    .locals 0

    .line 477
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public abstract valueOf(Landroid/graphics/Insets;)I
.end method
