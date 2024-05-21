.class public final Landroidx/compose/foundation/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0012\u0010\r\u001a\u00020\u000e*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u0012\u0010\u0014\u001a\u00020\u000e*\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0004R\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/foundation/EdgeEffectCompat;",
        "",
        "()V",
        "distanceCompat",
        "",
        "Landroid/widget/EdgeEffect;",
        "getDistanceCompat",
        "(Landroid/widget/EdgeEffect;)F",
        "create",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "onAbsorbCompat",
        "",
        "velocity",
        "",
        "onPullDistanceCompat",
        "deltaDistance",
        "displacement",
        "onReleaseWithOppositeDelta",
        "delta",
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
.field public static final INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-direct {v0}, Landroidx/compose/foundation/EdgeEffectCompat;-><init>()V

    sput-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getDistanceCompat(Landroid/widget/EdgeEffect;)F
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0
.end method

.method public final onAbsorbCompat(Landroid/widget/EdgeEffect;I)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void
.end method

.method public final onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0
.end method

.method public final onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of p0, p1, Landroidx/compose/foundation/GlowEdgeEffectCompat;

    if-eqz p0, :cond_0

    .line 64
    check-cast p1, Landroidx/compose/foundation/GlowEdgeEffectCompat;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/GlowEdgeEffectCompat;->releaseWithOppositeDelta(F)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
