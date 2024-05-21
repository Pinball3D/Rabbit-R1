.class final Landroidx/compose/foundation/shape/DpCornerSize;
.super Ljava/lang/Object;
.source "CornerSize.kt"

# interfaces
.implements Landroidx/compose/foundation/shape/CornerSize;
.implements Landroidx/compose/ui/platform/InspectableValue;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCornerSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CornerSize.kt\nandroidx/compose/foundation/shape/DpCornerSize\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u0019\u0010\n\u001a\u00020\u0004H\u00c2\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\tJ \u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J%\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u0019\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u001d\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/foundation/shape/DpCornerSize;",
        "Landroidx/compose/foundation/shape/CornerSize;",
        "Landroidx/compose/ui/platform/InspectableValue;",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "valueOverride",
        "getValueOverride-D9Ej5fM",
        "()F",
        "component1",
        "component1-D9Ej5fM",
        "copy",
        "copy-0680j_4",
        "(F)Landroidx/compose/foundation/shape/DpCornerSize;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toPx",
        "",
        "shapeSize",
        "Landroidx/compose/ui/geometry/Size;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "toPx-TmRCtEA",
        "(JLandroidx/compose/ui/unit/Density;)F",
        "toString",
        "",
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
.field private final size:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(F)V

    return-void
.end method

.method private final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return p0
.end method

.method public static synthetic copy-0680j_4$default(Landroidx/compose/foundation/shape/DpCornerSize;FILjava/lang/Object;)Landroidx/compose/foundation/shape/DpCornerSize;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/shape/DpCornerSize;->copy-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-0680j_4(F)Landroidx/compose/foundation/shape/DpCornerSize;
    .locals 1

    new-instance p0, Landroidx/compose/foundation/shape/DpCornerSize;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/shape/DpCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/shape/DpCornerSize;

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    iget p1, p1, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public bridge synthetic getValueOverride()Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/compose/foundation/shape/DpCornerSize;->getValueOverride-D9Ej5fM()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public getValueOverride-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 0

    const-string p1, "density"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    .line 51
    invoke-interface {p3, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CornerSize(size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/shape/DpCornerSize;->size:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".dp)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
