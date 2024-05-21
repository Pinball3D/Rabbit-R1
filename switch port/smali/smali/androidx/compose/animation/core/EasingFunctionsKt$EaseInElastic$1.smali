.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInElastic$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 4

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    float-to-double v0, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p1, p0

    sub-float p0, p1, p0

    float-to-double v2, p0

    .line 183
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    neg-float p0, p0

    float-to-double v0, p0

    const/high16 p0, 0x412c0000    # 10.75f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v2, 0x4000c152382d7365L    # 2.0943951023931953

    mul-double/2addr p0, v2

    .line 184
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    :goto_0
    return p0
.end method
