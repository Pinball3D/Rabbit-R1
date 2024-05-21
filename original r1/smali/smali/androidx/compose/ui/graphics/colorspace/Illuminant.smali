.class public final Landroidx/compose/ui/graphics/colorspace/Illuminant;
.super Ljava/lang/Object;
.source "Illuminant.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0014\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006R\u0011\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Illuminant;",
        "",
        "()V",
        "A",
        "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
        "getA",
        "()Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
        "B",
        "getB",
        "C",
        "getC",
        "D50",
        "getD50",
        "D50Xyz",
        "",
        "getD50Xyz$ui_graphics_release",
        "()[F",
        "D55",
        "getD55",
        "D60",
        "getD60",
        "D65",
        "getD65",
        "D75",
        "getD75",
        "E",
        "getE",
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
.field private static final A:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final B:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final D50Xyz:[F

.field private static final D55:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final D75:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field private static final E:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 27
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3ee527e5    # 0.44757f

    const v2, 0x3ed09d49    # 0.40745f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->A:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 33
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3eb2641b    # 0.34842f

    const v2, 0x3eb4063a    # 0.35161f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->B:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 39
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3e9ec02f    # 0.31006f

    const v2, 0x3ea1dfb9    # 0.31616f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 46
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3eb0fba9

    const v2, 0x3eb78d50    # 0.3585f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 52
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3eaa32f4    # 0.33242f

    const v2, 0x3eb1e258    # 0.34743f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D55:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 58
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3ea4b33e    # 0.32168f

    const v2, 0x3eace315    # 0.33767f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 65
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3ea01b86

    const v2, 0x3ea8754f    # 0.32902f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 71
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3e991926    # 0.29902f

    const v2, 0x3ea13405    # 0.31485f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D75:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 77
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3eaaaa3b    # 0.33333f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->E:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50Xyz:[F

    return-void

    :array_0
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getA()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->A:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getB()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->B:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getC()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getD50Xyz$ui_graphics_release()[F
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50Xyz:[F

    return-object p0
.end method

.method public final getD55()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D55:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getD60()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getD75()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D75:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method

.method public final getE()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->E:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    return-object p0
.end method
