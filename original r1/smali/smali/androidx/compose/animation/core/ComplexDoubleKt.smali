.class public final Landroidx/compose/animation/core/ComplexDoubleKt;
.super Ljava/lang/Object;
.source "ComplexDouble.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComplexDouble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n+ 2 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n1#1,112:1\n103#1:113\n107#1:119\n103#1:123\n103#1:134\n35#2,2:114\n54#2,3:116\n66#2,3:120\n35#2,2:124\n54#2,3:126\n35#2,2:129\n66#2,3:131\n35#2,2:135\n54#2,3:137\n*S KotlinDebug\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n*L\n88#1:113\n89#1:119\n89#1:123\n107#1:134\n88#1:114,2\n88#1:116,3\n89#1:120,3\n89#1:124,2\n89#1:126,3\n103#1:129,2\n107#1:131,3\n107#1:135,2\n111#1:137,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\u001a,\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0000\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0080\n\u001a\u0015\u0010\u000b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0080\n\u001a\u0015\u0010\u000c\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0080\n\u00a8\u0006\r"
    }
    d2 = {
        "complexQuadraticFormula",
        "Lkotlin/Pair;",
        "Landroidx/compose/animation/core/ComplexDouble;",
        "a",
        "",
        "b",
        "c",
        "complexSqrt",
        "num",
        "minus",
        "other",
        "plus",
        "times",
        "animation-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final complexQuadraticFormula(DDD)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;"
        }
    .end annotation

    mul-double v0, p2, p2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p4

    sub-double/2addr v0, v2

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, p4

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    div-double/2addr p4, p0

    neg-double p0, p2

    .line 88
    invoke-static {v0, v1}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object p2

    .line 114
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v2

    add-double/2addr v2, p0

    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 116
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v2

    mul-double/2addr v2, p4

    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 117
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v2

    mul-double/2addr v2, p4

    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 89
    invoke-static {v0, v1}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object p3

    .line 120
    invoke-static {p3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    const/4 v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {p3, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 121
    invoke-static {p3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p3, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 124
    invoke-static {p3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {p3, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 126
    invoke-static {p3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide p0

    mul-double/2addr p0, p4

    invoke-static {p3, p0, p1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 127
    invoke-static {p3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide p0

    mul-double/2addr p0, p4

    invoke-static {p3, p0, p1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 90
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 97
    new-instance v2, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-direct {v2, v0, v1, p0, p1}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v2, Landroidx/compose/animation/core/ComplexDouble;

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    :goto_0
    return-object v2
.end method

.method public static final minus(DLandroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 4

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    const/4 v2, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 132
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 135
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p2
.end method

.method public static final plus(DLandroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p2
.end method

.method public static final times(DLandroidx/compose/animation/core/ComplexDouble;)Landroidx/compose/animation/core/ComplexDouble;
    .locals 2

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, p0

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 138
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, p0

    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    return-object p2
.end method
