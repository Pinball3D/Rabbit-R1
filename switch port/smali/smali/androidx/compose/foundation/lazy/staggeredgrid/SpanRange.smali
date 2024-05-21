.class public final Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/SpanRange\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,1158:1\n907#1:1162\n906#1:1164\n48#2:1159\n55#2:1160\n62#2:1161\n62#2:1163\n55#2:1165\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/SpanRange\n*L\n908#1:1162\n908#1:1164\n904#1:1159\n906#1:1160\n907#1:1161\n908#1:1163\n908#1:1165\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0081@\u0018\u00002\u00020\u0001B\u001c\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0014\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u001a\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ\u0010\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\n\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR\u0012\u0010\u0011\u001a\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000c\u0088\u0001\u0007\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;",
        "",
        "lane",
        "",
        "span",
        "constructor-impl",
        "(II)J",
        "packedValue",
        "",
        "(J)J",
        "end",
        "getEnd-impl",
        "(J)I",
        "getPackedValue",
        "()J",
        "size",
        "getSize-impl",
        "start",
        "getStart-impl",
        "equals",
        "",
        "other",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "foundation_release"
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
.field private final packedValue:J


# direct methods
.method private synthetic constructor <init>(J)V
    .locals 0

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(II)J
    .locals 4

    add-int/2addr p1, p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 904
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getEnd-impl(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getSize-impl(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    const/16 v1, 0x20

    shr-long/2addr p0, v1

    long-to-int p0, p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static final getStart-impl(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanRange(packedValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getPackedValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->packedValue:J

    return-wide v0
.end method
