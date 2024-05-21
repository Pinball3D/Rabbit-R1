.class final Lkotlin/time/AbstractLongTimeSource$LongTimeMark;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Lkotlin/time/ComparableTimeMark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/AbstractLongTimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongTimeMark"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,199:1\n80#2:200\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:200\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\n\u001a\u00020\u0007H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u001b\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0013\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008!\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/time/AbstractLongTimeSource$LongTimeMark;",
        "Lkotlin/time/ComparableTimeMark;",
        "startedAt",
        "",
        "timeSource",
        "Lkotlin/time/AbstractLongTimeSource;",
        "offset",
        "Lkotlin/time/Duration;",
        "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "elapsedNow",
        "elapsedNow-UwyO8pc",
        "()J",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "minus",
        "minus-UwyO8pc",
        "(Lkotlin/time/ComparableTimeMark;)J",
        "plus",
        "duration",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/ComparableTimeMark;",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final offset:J

.field private final startedAt:J

.field private final timeSource:Lkotlin/time/AbstractLongTimeSource;


# direct methods
.method private constructor <init>(JLkotlin/time/AbstractLongTimeSource;J)V
    .locals 1

    const-string v0, "timeSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iput-object p3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    iput-wide p4, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lkotlin/time/ComparableTimeMark;

    invoke-virtual {p0, p1}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->compareTo(Lkotlin/time/ComparableTimeMark;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lkotlin/time/ComparableTimeMark;)I
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->compareTo(Lkotlin/time/ComparableTimeMark;Lkotlin/time/ComparableTimeMark;)I

    move-result p0

    return p0
.end method

.method public elapsedNow-UwyO8pc()J
    .locals 5

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    .line 45
    invoke-static {v0}, Lkotlin/time/AbstractLongTimeSource;->access$adjustedRead(Lkotlin/time/AbstractLongTimeSource;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iget-object v4, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v4}, Lkotlin/time/AbstractLongTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/time/LongSaturatedMathKt;->saturatingOriginsDiff(JJLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 80
    instance-of v0, p1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    move-object v1, p1

    check-cast v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-object v1, v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/time/ComparableTimeMark;

    invoke-virtual {p0, p1}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->minus-UwyO8pc(Lkotlin/time/ComparableTimeMark;)J

    move-result-wide p0

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNotPassedNow()Z
    .locals 0

    .line 43
    invoke-static {p0}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->hasNotPassedNow(Lkotlin/time/ComparableTimeMark;)Z

    move-result p0

    return p0
.end method

.method public hasPassedNow()Z
    .locals 0

    .line 43
    invoke-static {p0}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->hasPassedNow(Lkotlin/time/ComparableTimeMark;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    .line 82
    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public minus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->minus-LRDsOJo(Lkotlin/time/ComparableTimeMark;J)Lkotlin/time/ComparableTimeMark;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic minus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->minus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;

    move-result-object p0

    check-cast p0, Lkotlin/time/TimeMark;

    return-object p0
.end method

.method public minus-UwyO8pc(Lkotlin/time/ComparableTimeMark;)J
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v0, p1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    move-object v1, p1

    check-cast v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-object v2, v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    .line 75
    iget-wide v4, v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iget-object p1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {p1}, Lkotlin/time/AbstractLongTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object p1

    invoke-static {v2, v3, v4, v5, p1}, Lkotlin/time/LongSaturatedMathKt;->saturatingOriginsDiff(JJLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iget-wide p0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    .line 76
    iget-wide v0, v1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p0

    return-wide p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subtracting or comparing time marks from different time sources is not possible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " and "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public plus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;
    .locals 10

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    .line 48
    invoke-virtual {v0}, Lkotlin/time/AbstractLongTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v0

    .line 49
    invoke-static {p1, p2}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    .line 50
    invoke-static {v1, v2, v0, p1, p2}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide v4

    .line 51
    new-instance p1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-object v6, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lkotlin/time/ComparableTimeMark;

    return-object p1

    .line 53
    :cond_0
    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->truncateTo-UwyO8pc$kotlin_stdlib(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 54
    invoke-static {p1, p2, v1, v2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {p1, p2, v3, v4}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    .line 55
    invoke-static {v3, v4, v0, v1, v2}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide v1

    .line 56
    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->truncateTo-UwyO8pc$kotlin_stdlib(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 57
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide v1

    .line 58
    invoke-static {p1, p2, v3, v4}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 59
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    xor-long v7, v1, v3

    cmp-long v5, v7, v5

    if-gez v5, :cond_1

    .line 62
    invoke-static {v3, v4}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v3

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 63
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-NuflL3o(JLkotlin/time/DurationUnit;J)J

    move-result-wide v1

    .line 64
    invoke-static {p1, p2, v3, v4}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    :cond_1
    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    or-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 67
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    :cond_2
    move-wide v4, p1

    .line 68
    new-instance p1, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-object v3, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lkotlin/time/ComparableTimeMark;

    return-object p1
.end method

.method public bridge synthetic plus-LRDsOJo(J)Lkotlin/time/TimeMark;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->plus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;

    move-result-object p0

    check-cast p0, Lkotlin/time/TimeMark;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LongTimeMark("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v1}, Lkotlin/time/AbstractLongTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v1

    invoke-static {v1}, Lkotlin/time/DurationUnitKt;->shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lkotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
