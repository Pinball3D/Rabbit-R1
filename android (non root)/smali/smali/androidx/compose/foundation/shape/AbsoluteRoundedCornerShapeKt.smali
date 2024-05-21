.class public final Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;
.super Ljava/lang/Object;
.source "AbsoluteRoundedCornerShape.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbsoluteRoundedCornerShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbsoluteRoundedCornerShape.kt\nandroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,195:1\n154#2:196\n154#2:197\n154#2:198\n154#2:199\n*S KotlinDebug\n*F\n+ 1 AbsoluteRoundedCornerShape.kt\nandroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt\n*L\n142#1:196\n143#1:197\n144#1:198\n145#1:199\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a;\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000e\u001a.\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\t\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000e\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010\u001a.\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0010\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "AbsoluteRoundedCornerShape",
        "Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "corner",
        "Landroidx/compose/foundation/shape/CornerSize;",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "AbsoluteRoundedCornerShape-0680j_4",
        "(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "topLeft",
        "topRight",
        "bottomRight",
        "bottomLeft",
        "AbsoluteRoundedCornerShape-a9UjIt4",
        "(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;",
        "",
        "percent",
        "",
        "topLeftPercent",
        "topRightPercent",
        "bottomRightPercent",
        "bottomLeftPercent",
        "foundation_release"
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
.method public static final AbsoluteRoundedCornerShape(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 0

    .line 129
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final AbsoluteRoundedCornerShape(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 161
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 162
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    .line 163
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    .line 164
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p2

    .line 165
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p3

    .line 161
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(I)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 0

    .line 136
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final AbsoluteRoundedCornerShape(IIII)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 189
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 190
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    .line 191
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    .line 192
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p2

    .line 193
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p3

    .line 189
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method

.method public static final AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    const-string v0, "corner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    invoke-direct {v0, p0, p0, p0, p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method

.method public static synthetic AbsoluteRoundedCornerShape$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p1, v0

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    move p3, v0

    .line 156
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic AbsoluteRoundedCornerShape$default(IIIIILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p1, v0

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    move p3, v0

    .line 180
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(IIII)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final AbsoluteRoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 0

    .line 123
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public static final AbsoluteRoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    .line 146
    new-instance v0, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    .line 147
    invoke-static {p0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p0

    .line 148
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p1

    .line 149
    invoke-static {p2}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p2

    .line 150
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object p3

    .line 146
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    return-object v0
.end method

.method public static synthetic AbsoluteRoundedCornerShape-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    int-to-float p0, v0

    .line 196
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    int-to-float p1, v0

    .line 197
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    int-to-float p2, v0

    .line 198
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    int-to-float p3, v0

    .line 199
    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    .line 141
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShapeKt;->AbsoluteRoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/AbsoluteRoundedCornerShape;

    move-result-object p0

    return-object p0
.end method
