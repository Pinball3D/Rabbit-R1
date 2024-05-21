.class public final Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n1#1,868:1\n320#1:869\n321#1:870\n323#1:871\n322#1:872\n323#1:873\n320#1,4:874\n322#1,2:878\n320#1,2:880\n321#1:882\n323#1:883\n323#1:884\n321#1:885\n320#1:886\n321#1:887\n322#1:888\n323#1:889\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n348#1:869\n349#1:870\n350#1:871\n350#1:872\n351#1:873\n357#1:874,4\n359#1:878,2\n359#1:880,2\n365#1:882\n367#1:883\n373#1:884\n375#1:885\n379#1:886\n380#1:887\n381#1:888\n382#1:889\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0081@\u0018\u00002\u00020\u0001B,\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u001c\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\rB\u0014\u0008\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ>\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u0015\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008$\u0010\"J\u0016\u0010%\u001a\u00020\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u000fJ\u001e\u0010\'\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010\rJ\u0010\u0010)\u001a\u00020*H\u00d6\u0001\u00a2\u0006\u0004\u0008+\u0010,R\u0012\u0010\u0006\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0005\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011R\u0012\u0010\u0004\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0012\u0010\u0002\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0011R\u0019\u0010\u000e\u001a\u00020\nX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0015\u0088\u0001\u000e\u0092\u0001\u00020\n\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "",
        "mainAxisMin",
        "",
        "mainAxisMax",
        "crossAxisMin",
        "crossAxisMax",
        "constructor-impl",
        "(IIII)J",
        "c",
        "Landroidx/compose/ui/unit/Constraints;",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "(JLandroidx/compose/foundation/layout/LayoutOrientation;)J",
        "value",
        "(J)J",
        "getCrossAxisMax-impl",
        "(J)I",
        "getCrossAxisMin-impl",
        "getMainAxisMax-impl",
        "getMainAxisMin-impl",
        "J",
        "copy",
        "copy-yUG9Ft0",
        "(JIIII)J",
        "equals",
        "",
        "other",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "maxHeight",
        "maxHeight-impl",
        "(JLandroidx/compose/foundation/layout/LayoutOrientation;)I",
        "maxWidth",
        "maxWidth-impl",
        "stretchCrossAxis",
        "stretchCrossAxis-q4ezo7Y",
        "toBoxConstraints",
        "toBoxConstraints-OenEA2s",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final value:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(IIII)J
    .locals 0

    .line 331
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    .line 330
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 4

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    .line 341
    :goto_0
    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    .line 342
    :goto_1
    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 343
    :goto_2
    sget-object v3, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v3, :cond_3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    goto :goto_3

    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    .line 339
    :goto_3
    invoke-static {v0, v1, v2, p0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final copy-yUG9Ft0(JIIII)J
    .locals 0

    .line 384
    invoke-static {p2, p3, p4, p5}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 886
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    .line 887
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p3

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 888
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p4

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 889
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p5

    :cond_3
    move v5, p5

    move-wide v0, p0

    .line 378
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0(JIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->unbox-impl()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p0

    return p0
.end method

.method public static final getCrossAxisMax-impl(J)I
    .locals 0

    .line 323
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    return p0
.end method

.method public static final getCrossAxisMin-impl(J)I
    .locals 0

    .line 322
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    return p0
.end method

.method public static final getMainAxisMax-impl(J)I
    .locals 0

    .line 321
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    return p0
.end method

.method public static final getMainAxisMin-impl(J)I
    .locals 0

    .line 320
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public static final maxHeight-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 884
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    goto :goto_0

    .line 885
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final maxWidth-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 882
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    goto :goto_0

    .line 883
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final stretchCrossAxis-q4ezo7Y(J)J
    .locals 4

    .line 869
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 870
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 871
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    goto :goto_0

    .line 872
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 873
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    .line 347
    invoke-static {v0, v1, v2, p0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J
    .locals 2

    const-string v0, "orientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p2, v0, :cond_0

    .line 874
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    .line 875
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .line 876
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    .line 877
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    .line 357
    invoke-static {p2, v0, v1, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    goto :goto_0

    .line 878
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    .line 879
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    .line 880
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 881
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    .line 359
    invoke-static {p2, v0, v1, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrientationIndependentConstraints(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->value:J

    return-wide v0
.end method
