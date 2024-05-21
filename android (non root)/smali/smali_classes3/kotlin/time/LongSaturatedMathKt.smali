.class public final Lkotlin/time/LongSaturatedMathKt;
.super Ljava/lang/Object;
.source "longSaturatedMath.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\u001a\'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0015\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\t\u001a\'\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\'\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u001a%\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0010\u0014\u001a%\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0002\u0010\u0014\u001a%\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0010\u0014\u001a\r\u0010\u001b\u001a\u00020\u001c*\u00020\u0001H\u0080\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "checkInfiniteSumDefined",
        "",
        "value",
        "duration",
        "Lkotlin/time/Duration;",
        "durationInUnit",
        "checkInfiniteSumDefined-PjuGub4",
        "(JJJ)J",
        "infinityOfSign",
        "(J)J",
        "saturatingAdd",
        "unit",
        "Lkotlin/time/DurationUnit;",
        "saturatingAdd-NuflL3o",
        "(JLkotlin/time/DurationUnit;J)J",
        "saturatingAddInHalves",
        "saturatingAddInHalves-NuflL3o",
        "saturatingDiff",
        "valueNs",
        "origin",
        "(JJLkotlin/time/DurationUnit;)J",
        "saturatingFiniteDiff",
        "value1",
        "value2",
        "saturatingOriginsDiff",
        "origin1",
        "origin2",
        "isSaturated",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final checkInfiniteSumDefined-PjuGub4(JJJ)J
    .locals 0

    .line 29
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result p2

    if-eqz p2, :cond_1

    xor-long p2, p0, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinities of different signs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method private static final infinityOfSign(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    .line 43
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getNEG_INFINITE-UwyO8pc$kotlin_stdlib()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final isSaturated(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    or-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J
    .locals 9

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p3, p4, p2}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    const-wide/16 v0, 0x1

    sub-long v2, p0, v0

    or-long/2addr v2, v0

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    move-wide v1, p0

    move-wide v3, p3

    .line 15
    invoke-static/range {v1 .. v6}, Lkotlin/time/LongSaturatedMathKt;->checkInfiniteSumDefined-PjuGub4(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-long v2, v5, v0

    or-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingAddInHalves-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    add-long p2, p0, v5

    xor-long v0, p0, p2

    xor-long v2, v5, p2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-gez p4, :cond_3

    cmp-long p0, p0, v2

    if-gez p0, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    :cond_2
    return-wide v7

    :cond_3
    return-wide p2
.end method

.method private static final saturatingAddInHalves-NuflL3o(JLkotlin/time/DurationUnit;J)J
    .locals 8

    const/4 v0, 0x2

    .line 34
    invoke-static {p3, p4, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide v0

    .line 35
    invoke-static {v0, v1, p2}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v6, v2, v4

    or-long/2addr v4, v6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    return-wide v2

    .line 39
    :cond_0
    invoke-static {p0, p1, p2, v0, v1}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide p0

    invoke-static {p3, p4, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p3

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final saturatingDiff(JJLkotlin/time/DurationUnit;)J
    .locals 4

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long v2, p2, v0

    or-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 47
    invoke-static {p2, p3}, Lkotlin/time/LongSaturatedMathKt;->infinityOfSign(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    return-wide p0

    .line 49
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingFiniteDiff(JJLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final saturatingFiniteDiff(JJLkotlin/time/DurationUnit;)J
    .locals 6

    sub-long v0, p0, p2

    xor-long v2, v0, p0

    xor-long v4, v0, p2

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 66
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {p4, v2}, Lkotlin/time/DurationUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x1

    .line 67
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2, p4}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 68
    div-long v2, p0, v0

    div-long v4, p2, v0

    sub-long/2addr v2, v4

    .line 69
    rem-long/2addr p0, v0

    rem-long/2addr p2, v0

    sub-long/2addr p0, p2

    .line 70
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p2

    invoke-static {p0, p1, p4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p0

    return-wide p0

    .line 72
    :cond_0
    invoke-static {v0, v1}, Lkotlin/time/LongSaturatedMathKt;->infinityOfSign(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    return-wide p0

    .line 75
    :cond_1
    invoke-static {v0, v1, p4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final saturatingOriginsDiff(JJLkotlin/time/DurationUnit;)J
    .locals 6

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long v2, p2, v0

    or-long/2addr v2, v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    .line 54
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p0

    return-wide p0

    .line 55
    :cond_0
    invoke-static {p2, p3}, Lkotlin/time/LongSaturatedMathKt;->infinityOfSign(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    sub-long v2, p0, v0

    or-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 58
    invoke-static {p0, p1}, Lkotlin/time/LongSaturatedMathKt;->infinityOfSign(J)J

    move-result-wide p0

    return-wide p0

    .line 60
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/LongSaturatedMathKt;->saturatingFiniteDiff(JJLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method
