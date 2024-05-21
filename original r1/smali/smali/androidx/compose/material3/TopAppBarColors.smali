.class public final Landroidx/compose/material3/TopAppBarColors;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B2\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0001\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001f\u0010\u0007\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001f\u0010\u0005\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u000c\u0010\nR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001f\u0010\u0006\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\r\u0010\n\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/material3/TopAppBarColors;",
        "",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "scrolledContainerColor",
        "navigationIconContentColor",
        "titleContentColor",
        "actionIconContentColor",
        "(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getActionIconContentColor-0d7_KjU$material3_release",
        "()J",
        "J",
        "getNavigationIconContentColor-0d7_KjU$material3_release",
        "getTitleContentColor-0d7_KjU$material3_release",
        "colorTransitionFraction",
        "",
        "containerColor-XeAY9LY$material3_release",
        "(FLandroidx/compose/runtime/Composer;I)J",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "material3_release"
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


# instance fields
.field private final actionIconContentColor:J

.field private final containerColor:J

.field private final navigationIconContentColor:J

.field private final scrolledContainerColor:J

.field private final titleContentColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJJJ)V
    .locals 0

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    iput-wide p5, p0, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    iput-wide p7, p0, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    iput-wide p9, p0, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJ)V

    return-void
.end method


# virtual methods
.method public final containerColor-XeAY9LY$material3_release(FLandroidx/compose/runtime/Composer;I)J
    .locals 4

    const v0, -0x56cbe967

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(containerColor):AppBar.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TopAppBarColors.containerColor (AppBar.kt:936)"

    .line 937
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 941
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutLinearInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    .line 938
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 947
    instance-of v2, p1, Landroidx/compose/material3/TopAppBarColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 949
    check-cast p1, Landroidx/compose/material3/TopAppBarColors;

    iget-wide v4, p1, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 950
    iget-wide v4, p1, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 951
    iget-wide v4, p1, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 952
    iget-wide v4, p1, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 953
    iget-wide p0, p1, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final getActionIconContentColor-0d7_KjU$material3_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    return-wide v0
.end method

.method public final getNavigationIconContentColor-0d7_KjU$material3_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    return-wide v0
.end method

.method public final getTitleContentColor-0d7_KjU$material3_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 959
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 960
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 961
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 962
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 963
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
