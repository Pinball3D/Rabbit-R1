.class public final Landroidx/compose/animation/core/StartOffset;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087@\u0018\u00002\u00020\u0001B\u001e\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0014\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\nJ\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u0010\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u00058F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000cR\u000e\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0008\u0092\u0001\u00020\t\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/animation/core/StartOffset;",
        "",
        "offsetMillis",
        "",
        "offsetType",
        "Landroidx/compose/animation/core/StartOffsetType;",
        "constructor-impl",
        "(II)J",
        "value",
        "",
        "(J)J",
        "getOffsetMillis-impl",
        "(J)I",
        "getOffsetType-Eo1U57Q",
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
        "animation-core_release"
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

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/animation/core/StartOffset;->value:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/animation/core/StartOffset;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/StartOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/StartOffset;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(II)J
    .locals 0

    mul-int/2addr p0, p1

    int-to-long p0, p0

    .line 211
    invoke-static {p0, p1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static synthetic constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 211
    sget-object p1, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {p1}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/animation/core/StartOffset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/animation/core/StartOffset;

    invoke-virtual {p2}, Landroidx/compose/animation/core/StartOffset;->unbox-impl()J

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

.method public static final getOffsetMillis-impl(J)I
    .locals 0

    long-to-int p0, p0

    .line 219
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static final getOffsetType-Eo1U57Q(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x1

    if-lez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    .line 226
    sget-object p0, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {p0}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getFastForward-Eo1U57Q()I

    move-result p0

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    .line 227
    sget-object p0, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {p0}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result p0

    :goto_1
    return p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
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

    const-string v1, "StartOffset(value="

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

    iget-wide v0, p0, Landroidx/compose/animation/core/StartOffset;->value:J

    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/StartOffset;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/StartOffset;->value:J

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/StartOffset;->value:J

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/StartOffset;->value:J

    return-wide v0
.end method
