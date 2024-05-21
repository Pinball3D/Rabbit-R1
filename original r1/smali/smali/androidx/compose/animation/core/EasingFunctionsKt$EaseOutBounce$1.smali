.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutBounce$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 1

    const p0, 0x3eba2e8c

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40f20000    # 7.5625f

    if-gez p0, :cond_0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto :goto_1

    :cond_0
    const p0, 0x3f3a2e8c

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f400000    # 0.75f

    :goto_0
    add-float/2addr v0, p0

    goto :goto_1

    :cond_1
    const p0, 0x3f68ba2f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f700000    # 0.9375f

    goto :goto_0

    :cond_2
    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f7c0000    # 0.984375f

    goto :goto_0

    :goto_1
    return v0
.end method
