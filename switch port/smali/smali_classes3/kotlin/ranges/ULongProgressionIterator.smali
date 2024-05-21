.class final Lkotlin/ranges/ULongProgressionIterator;
.super Ljava/lang/Object;
.source "ULongRange.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ULong;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0013\u0010\u000c\u001a\u00020\u0002H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u00020\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000c\u001a\u00020\u0002X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008!\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/ULongProgressionIterator;",
        "",
        "Lkotlin/ULong;",
        "first",
        "last",
        "step",
        "",
        "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "finalElement",
        "J",
        "hasNext",
        "",
        "next",
        "next-s-VKNKU",
        "()J",
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
.field private final finalElement:J

.field private hasNext:Z

.field private next:J

.field private final step:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lkotlin/ranges/ULongProgressionIterator;->finalElement:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 126
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    .line 127
    invoke-static {p5, p6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p5

    iput-wide p5, p0, Lkotlin/ranges/ULongProgressionIterator;->step:J

    iget-boolean p5, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move-wide p1, p3

    :goto_1
    iput-wide p1, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/ULongProgressionIterator;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgressionIterator;->next-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    return-object p0
.end method

.method public next-s-VKNKU()J
    .locals 4

    iget-wide v0, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    iget-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->finalElement:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 135
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->step:J

    add-long/2addr v2, v0

    .line 138
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    iput-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    :goto_0
    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
