.class public final Landroidx/compose/ui/text/android/VerticalPaddings;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/VerticalPaddings\n+ 2 InlineClassUtils.kt\nandroidx/compose/ui/text/android/InlineClassUtilsKt\n*L\n1#1,1033:1\n32#2:1034\n39#2:1035\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/VerticalPaddings\n*L\n892#1:1034\n895#1:1035\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0081@\u0018\u00002\u00020\u0001B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\tJ\u0010\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/VerticalPaddings;",
        "",
        "packedValue",
        "",
        "constructor-impl",
        "(J)J",
        "bottomPadding",
        "",
        "getBottomPadding-impl",
        "(J)I",
        "topPadding",
        "getTopPadding-impl",
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
        "ui-text_release"
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

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/text/android/VerticalPaddings;->packedValue:J

    return-void
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/text/android/VerticalPaddings;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/android/VerticalPaddings;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/android/VerticalPaddings;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/ui/text/android/VerticalPaddings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/text/android/VerticalPaddings;

    invoke-virtual {p2}, Landroidx/compose/ui/text/android/VerticalPaddings;->unbox-impl()J

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

.method public static final getBottomPadding-impl(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getTopPadding-impl(J)I
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

    const-string v1, "VerticalPaddings(packedValue="

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

    iget-wide v0, p0, Landroidx/compose/ui/text/android/VerticalPaddings;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/text/android/VerticalPaddings;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/android/VerticalPaddings;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/VerticalPaddings;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/android/VerticalPaddings;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/VerticalPaddings;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/android/VerticalPaddings;->packedValue:J

    return-wide v0
.end method
