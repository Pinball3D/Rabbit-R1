.class public final Landroidx/compose/material3/FixedThreshold;
.super Ljava/lang/Object;
.source "Swipeable.kt"

# interfaces
.implements Landroidx/compose/material3/ThresholdConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0006\u001a\u00020\u0003H\u00c2\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/material3/FixedThreshold;",
        "Landroidx/compose/material3/ThresholdConfig;",
        "offset",
        "Landroidx/compose/ui/unit/Dp;",
        "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "component1",
        "component1-D9Ej5fM",
        "()F",
        "copy",
        "copy-0680j_4",
        "(F)Landroidx/compose/material3/FixedThreshold;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "computeThreshold",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "fromValue",
        "toValue",
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


# instance fields
.field private final offset:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material3/FixedThreshold;-><init>(F)V

    return-void
.end method

.method private final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    return p0
.end method

.method public static synthetic copy-0680j_4$default(Landroidx/compose/material3/FixedThreshold;FILjava/lang/Object;)Landroidx/compose/material3/FixedThreshold;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/FixedThreshold;->copy-0680j_4(F)Landroidx/compose/material3/FixedThreshold;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public computeThreshold(Landroidx/compose/ui/unit/Density;FF)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    .line 640
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    return p2
.end method

.method public final copy-0680j_4(F)Landroidx/compose/material3/FixedThreshold;
    .locals 1

    new-instance p0, Landroidx/compose/material3/FixedThreshold;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/FixedThreshold;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/FixedThreshold;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/FixedThreshold;

    iget p0, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    iget p1, p1, Landroidx/compose/material3/FixedThreshold;->offset:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FixedThreshold(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/material3/FixedThreshold;->offset:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
