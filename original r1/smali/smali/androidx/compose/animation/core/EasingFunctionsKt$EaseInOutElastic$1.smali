.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;
.super Ljava/lang/Object;
.source "EasingFunctions.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "fraction"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 9

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-nez v1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    cmpg-float p0, p0, p1

    const/high16 v1, 0x41320000    # 11.125f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40000000    # 2.0f

    const-wide v5, 0x3ff657184ae74487L    # 1.3962634015954636

    if-gtz p0, :cond_2

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    float-to-double v7, v4

    mul-float/2addr p1, v2

    sub-float p0, p1, v3

    float-to-double v2, p0

    .line 212
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    float-to-double v2, p0

    sub-float/2addr p1, v1

    float-to-double p0, p1

    mul-double/2addr p0, v5

    .line 213
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    neg-double p0, v2

    div-double/2addr p0, v7

    double-to-float p0, p0

    goto :goto_0

    :cond_2
    float-to-double v7, v4

    const/high16 p0, -0x3e600000    # -20.0f

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    float-to-double v3, p0

    .line 215
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p0, v3

    float-to-double v3, p0

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    float-to-double p0, p1

    mul-double/2addr p0, v5

    .line 216
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    div-double/2addr v3, v7

    double-to-float p0, v3

    add-float/2addr p0, v0

    :goto_0
    return p0
.end method
