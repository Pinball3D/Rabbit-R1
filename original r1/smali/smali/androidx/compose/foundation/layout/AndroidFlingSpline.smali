.class final Landroidx/compose/foundation/layout/AndroidFlingSpline;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/AndroidFlingSpline\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,724:1\n25#2,3:725\n*S KotlinDebug\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/AndroidFlingSpline\n*L\n700#1:725,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/AndroidFlingSpline;",
        "",
        "()V",
        "NbSamples",
        "",
        "SplinePositions",
        "",
        "SplineTimes",
        "deceleration",
        "",
        "velocity",
        "",
        "friction",
        "flingPosition",
        "Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;",
        "time",
        "flingPosition-LfoxSSI",
        "(F)J",
        "FlingResult",
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
.field public static final INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

.field private static final NbSamples:I = 0x64

.field private static final SplinePositions:[F

.field private static final SplineTimes:[F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/AndroidFlingSpline;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplinePositions:[F

    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplineTimes:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v5, v2

    int-to-float v3, v3

    div-float/2addr v5, v3

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 663
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v7, v7, v17

    if-ltz v7, :cond_1

    cmpl-float v7, v12, v5

    if-lez v7, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplinePositions:[F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v10, v7

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    .line 666
    aput v9, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v10, v6, v9

    sub-float v12, v4, v6

    mul-float/2addr v10, v12

    mul-float v14, v12, v7

    add-float/2addr v14, v6

    mul-float/2addr v14, v10

    mul-float v15, v6, v6

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    sub-float v16, v14, v5

    .line 674
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    cmpg-double v7, v8, v17

    if-ltz v7, :cond_3

    cmpl-float v7, v14, v5

    if-lez v7, :cond_2

    move v3, v6

    goto :goto_3

    :cond_2
    move v1, v6

    :goto_3
    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    sget-object v3, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplineTimes:[F

    mul-float/2addr v12, v11

    mul-float/2addr v6, v13

    add-float/2addr v12, v6

    mul-float/2addr v10, v12

    add-float/2addr v10, v15

    .line 677
    aput v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplineTimes:[F

    .line 679
    aput v4, v0, v3

    sget-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplinePositions:[F

    .line 680
    aput v4, v0, v3

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deceleration(FF)D
    .locals 2

    const p0, 0x3eb33333    # 0.35f

    .line 707
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final flingPosition-LfoxSSI(F)J
    .locals 4

    const/16 p0, 0x64

    int-to-float v0, p0

    mul-float v1, v0, p1

    float-to-int v1, v1

    if-ge v1, p0, :cond_0

    int-to-float p0, v1

    div-float/2addr p0, v0

    add-int/lit8 v2, v1, 0x1

    int-to-float v3, v2

    div-float/2addr v3, v0

    sget-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->SplinePositions:[F

    .line 695
    aget v1, v0, v1

    .line 696
    aget v0, v0, v2

    sub-float/2addr v0, v1

    sub-float/2addr v3, p0

    div-float/2addr v0, v3

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 725
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    .line 726
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    .line 700
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
