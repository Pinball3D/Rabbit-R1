.class public final Landroidx/compose/ui/geometry/Offset;
.super Ljava/lang/Object;
.source "Offset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/geometry/Offset$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOffset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,266:1\n34#2:267\n41#2:268\n*S KotlinDebug\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/Offset\n*L\n70#1:267\n80#1:268\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0087@\u0018\u0000 92\u00020\u0001:\u00019B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000bJ*\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008 \u0010\u000bJ\u000f\u0010!\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\"\u0010\u000bJ\u0010\u0010#\u001a\u00020$H\u00d6\u0001\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u001bH\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u001e\u0010*\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u001e\u0010-\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010,J!\u0010/\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010\u0019J!\u00101\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u0010\u0019J\u000f\u00103\u001a\u000204H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0019\u00107\u001a\u00020\u0000H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u00078FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\t\u001a\u0004\u0008\u000e\u0010\u000b\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/ui/geometry/Offset;",
        "",
        "packedValue",
        "",
        "constructor-impl",
        "(J)J",
        "x",
        "",
        "getX$annotations",
        "()V",
        "getX-impl",
        "(J)F",
        "y",
        "getY$annotations",
        "getY-impl",
        "component1",
        "component1-impl",
        "component2",
        "component2-impl",
        "copy",
        "copy-dBAh8RU",
        "(JFF)J",
        "div",
        "operand",
        "div-tuRUvjQ",
        "(JF)J",
        "equals",
        "",
        "other",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "getDistance",
        "getDistance-impl",
        "getDistanceSquared",
        "getDistanceSquared-impl",
        "hashCode",
        "",
        "hashCode-impl",
        "(J)I",
        "isValid",
        "isValid-impl",
        "(J)Z",
        "minus",
        "minus-MK-Hz9U",
        "(JJ)J",
        "plus",
        "plus-MK-Hz9U",
        "rem",
        "rem-tuRUvjQ",
        "times",
        "times-tuRUvjQ",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "unaryMinus",
        "unaryMinus-F1C5BW0",
        "Companion",
        "ui-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/geometry/Offset$Companion;

.field private static final Infinite:J

.field private static final Unspecified:J

.field private static final Zero:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/geometry/Offset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/geometry/Offset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    const/4 v0, 0x0

    .line 102
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Zero:J

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 114
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Infinite:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 121
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-void
.end method

.method public static final synthetic access$getInfinite$cp()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Infinite:J

    return-wide v0
.end method

.method public static final synthetic access$getUnspecified$cp()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic access$getZero$cp()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Zero:J

    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/geometry/Offset;
    .locals 1

    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object v0
.end method

.method public static final component1-impl(J)F
    .locals 0

    .line 84
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    return p0
.end method

.method public static final component2-impl(J)F
    .locals 0

    .line 87
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    return p0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static final copy-dBAh8RU(JFF)J
    .locals 0

    .line 93
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic copy-dBAh8RU$default(JFFILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU(JFF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final div-tuRUvjQ(JF)J
    .locals 1

    .line 198
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    div-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    div-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/ui/geometry/Offset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getDistance-impl(J)F
    .locals 2

    .line 139
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final getDistanceSquared-impl(J)F
    .locals 2

    .line 147
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static synthetic getX$annotations()V
    .locals 0

    return-void
.end method

.method public static final getX-impl(J)F
    .locals 2

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Offset is unspecified"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getY$annotations()V
    .locals 0

    return-void
.end method

.method public static final getY-impl(J)F
    .locals 2

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Offset is unspecified"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final isValid-impl(J)Z
    .locals 1

    .line 126
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Offset argument contained a NaN value."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final minus-MK-Hz9U(JJ)J
    .locals 2

    .line 168
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-MK-Hz9U(JJ)J
    .locals 2

    .line 178
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final rem-tuRUvjQ(JF)J
    .locals 1

    .line 208
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    rem-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    rem-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-tuRUvjQ(JF)J
    .locals 1

    .line 188
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 3

    .line 210
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offset("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p0, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Offset.Unspecified"

    :goto_0
    return-object p0
.end method

.method public static final unaryMinus-F1C5BW0(J)J
    .locals 1

    .line 158
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    neg-float v0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    neg-float p0, p0

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/geometry/Offset;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 210
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-wide v0
.end method
