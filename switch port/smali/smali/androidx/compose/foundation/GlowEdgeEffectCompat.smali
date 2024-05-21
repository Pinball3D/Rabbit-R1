.class final Landroidx/compose/foundation/GlowEdgeEffectCompat;
.super Landroid/widget/EdgeEffect;
.source "EdgeEffectCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEdgeEffectCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EdgeEffectCompat.kt\nandroidx/compose/foundation/GlowEdgeEffectCompat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,156:1\n1#2:157\n154#3:158\n*S KotlinDebug\n*F\n+ 1 EdgeEffectCompat.kt\nandroidx/compose/foundation/GlowEdgeEffectCompat\n*L\n88#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/GlowEdgeEffectCompat;",
        "Landroid/widget/EdgeEffect;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "oppositeReleaseDelta",
        "",
        "oppositeReleaseDeltaThreshold",
        "onAbsorb",
        "",
        "velocity",
        "",
        "onPull",
        "deltaDistance",
        "displacement",
        "onRelease",
        "releaseWithOppositeDelta",
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


# instance fields
.field private oppositeReleaseDelta:F

.field private final oppositeReleaseDeltaThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {p1}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 158
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 88
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDeltaThreshold:F

    return-void
.end method


# virtual methods
.method public onAbsorb(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 108
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 98
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 103
    invoke-super {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    return-void
.end method

.method public final releaseWithOppositeDelta(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDeltaThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/compose/foundation/GlowEdgeEffectCompat;->onRelease()V

    :cond_0
    return-void
.end method
