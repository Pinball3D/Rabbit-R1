.class public interface abstract Landroidx/compose/ui/graphics/Path;
.super Ljava/lang/Object;
.source "Path.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Path$Companion;,
        Landroidx/compose/ui/graphics/Path$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u0000 P2\u00020\u0001:\u0001PJ \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J \u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H&J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\'\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u000fH&J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H&J(\u0010\"\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\tH&J(\u0010$\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\tH\u0016J\u0008\u0010%\u001a\u00020\rH&J8\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0011H&J\u0008\u0010-\u001a\u00020\u000fH&J\u0018\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H&J\u0018\u00101\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H&J-\u00102\u001a\u00020\t2\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u000206H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108J(\u00109\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u0011H&J8\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u00112\u0006\u0010=\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u00112\u0006\u0010?\u001a\u00020\u00112\u0006\u0010@\u001a\u00020\u0011H&J\u0018\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u00112\u0006\u0010C\u001a\u00020\u0011H&J\u0018\u0010D\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u00112\u0006\u0010C\u001a\u00020\u0011H&J(\u0010E\u001a\u00020\r2\u0006\u0010;\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u00112\u0006\u0010=\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u0011H&J\u0008\u0010F\u001a\u00020\rH&J\u0008\u0010G\u001a\u00020\rH\u0016J\u001d\u0010H\u001a\u00020\r2\u0006\u0010I\u001a\u00020JH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u001d\u0010M\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010OR!\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0012\u0010\u000b\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\n\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006Q\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Path;",
        "",
        "fillType",
        "Landroidx/compose/ui/graphics/PathFillType;",
        "getFillType-Rg-k1Os",
        "()I",
        "setFillType-oQ8Xj4U",
        "(I)V",
        "isConvex",
        "",
        "()Z",
        "isEmpty",
        "addArc",
        "",
        "oval",
        "Landroidx/compose/ui/geometry/Rect;",
        "startAngleDegrees",
        "",
        "sweepAngleDegrees",
        "addArcRad",
        "startAngleRadians",
        "sweepAngleRadians",
        "addOval",
        "addPath",
        "path",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "addPath-Uv8p0NA",
        "(Landroidx/compose/ui/graphics/Path;J)V",
        "addRect",
        "rect",
        "addRoundRect",
        "roundRect",
        "Landroidx/compose/ui/geometry/RoundRect;",
        "arcTo",
        "forceMoveTo",
        "arcToRad",
        "close",
        "cubicTo",
        "x1",
        "y1",
        "x2",
        "y2",
        "x3",
        "y3",
        "getBounds",
        "lineTo",
        "x",
        "y",
        "moveTo",
        "op",
        "path1",
        "path2",
        "operation",
        "Landroidx/compose/ui/graphics/PathOperation;",
        "op-N5in7k0",
        "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z",
        "quadraticBezierTo",
        "relativeCubicTo",
        "dx1",
        "dy1",
        "dx2",
        "dy2",
        "dx3",
        "dy3",
        "relativeLineTo",
        "dx",
        "dy",
        "relativeMoveTo",
        "relativeQuadraticBezierTo",
        "reset",
        "rewind",
        "transform",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "transform-58bKbWc",
        "([F)V",
        "translate",
        "translate-k-4lQ0M",
        "(J)V",
        "Companion",
        "ui-graphics_release"
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
.field public static final Companion:Landroidx/compose/ui/graphics/Path$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/Path$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/Path$Companion;

    sput-object v0, Landroidx/compose/ui/graphics/Path;->Companion:Landroidx/compose/ui/graphics/Path$Companion;

    return-void
.end method

.method public static synthetic access$arcToRad$jd(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;FFZ)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Path;->arcToRad(Landroidx/compose/ui/geometry/Rect;FFZ)V

    return-void
.end method

.method public static synthetic access$rewind$jd(Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    .line 26
    invoke-super {p0}, Landroidx/compose/ui/graphics/Path;->rewind()V

    return-void
.end method

.method public static synthetic access$transform-58bKbWc$jd(Landroidx/compose/ui/graphics/Path;[F)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/Path;->transform-58bKbWc([F)V

    return-void
.end method

.method public static synthetic addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 205
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p2

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Path;->addPath-Uv8p0NA(Landroidx/compose/ui/graphics/Path;J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addPath-Uv8p0NA"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract addArc(Landroidx/compose/ui/geometry/Rect;FF)V
.end method

.method public abstract addArcRad(Landroidx/compose/ui/geometry/Rect;FF)V
.end method

.method public abstract addOval(Landroidx/compose/ui/geometry/Rect;)V
.end method

.method public abstract addPath-Uv8p0NA(Landroidx/compose/ui/graphics/Path;J)V
.end method

.method public abstract addRect(Landroidx/compose/ui/geometry/Rect;)V
.end method

.method public abstract addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V
.end method

.method public abstract arcTo(Landroidx/compose/ui/geometry/Rect;FFZ)V
.end method

.method public arcToRad(Landroidx/compose/ui/geometry/Rect;FFZ)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result p2

    invoke-static {p3}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result p3

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Path;->arcTo(Landroidx/compose/ui/geometry/Rect;FFZ)V

    return-void
.end method

.method public abstract close()V
.end method

.method public abstract cubicTo(FFFFFF)V
.end method

.method public abstract getBounds()Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getFillType-Rg-k1Os()I
.end method

.method public abstract isConvex()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract lineTo(FF)V
.end method

.method public abstract moveTo(FF)V
.end method

.method public abstract op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z
.end method

.method public abstract quadraticBezierTo(FFFF)V
.end method

.method public abstract relativeCubicTo(FFFFFF)V
.end method

.method public abstract relativeLineTo(FF)V
.end method

.method public abstract relativeMoveTo(FF)V
.end method

.method public abstract relativeQuadraticBezierTo(FFFF)V
.end method

.method public abstract reset()V
.end method

.method public rewind()V
    .locals 0

    .line 227
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    return-void
.end method

.method public abstract setFillType-oQ8Xj4U(I)V
.end method

.method public transform-58bKbWc([F)V
    .locals 0

    const-string p0, "matrix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract translate-k-4lQ0M(J)V
.end method
