.class public final Landroidx/compose/ui/text/style/TextIndent;
.super Ljava/lang/Object;
.source "TextIndent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/TextIndent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001c\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\'\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\t\u0010\u0007\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/TextIndent;",
        "",
        "firstLine",
        "Landroidx/compose/ui/unit/TextUnit;",
        "restLine",
        "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getFirstLine-XSAIIZE",
        "()J",
        "J",
        "getRestLine-XSAIIZE",
        "copy",
        "copy-NB67dxo",
        "(JJ)Landroidx/compose/ui/text/style/TextIndent;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

.field private static final None:Landroidx/compose/ui/text/style/TextIndent;


# instance fields
.field private final firstLine:J

.field private final restLine:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/ui/text/style/TextIndent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextIndent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 41
    new-instance v0, Landroidx/compose/ui/text/style/TextIndent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    iput-wide p3, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide p1

    :cond_0
    move-wide v2, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 34
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide p3

    :cond_1
    move-wide v4, p3

    const/4 v6, 0x0

    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getNone$cp()Landroidx/compose/ui/text/style/TextIndent;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    return-object v0
.end method

.method public static synthetic copy-NB67dxo$default(Landroidx/compose/ui/text/style/TextIndent;JJILjava/lang/Object;)Landroidx/compose/ui/text/style/TextIndent;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 45
    iget-wide p1, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 46
    iget-wide p3, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 44
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/style/TextIndent;->copy-NB67dxo(JJ)Landroidx/compose/ui/text/style/TextIndent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-NB67dxo(JJ)Landroidx/compose/ui/text/style/TextIndent;
    .locals 6

    .line 48
    new-instance p0, Landroidx/compose/ui/text/style/TextIndent;

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/TextIndent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 54
    check-cast p1, Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v5, p1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 55
    iget-wide p0, p1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFirstLine-XSAIIZE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    return-wide v0
.end method

.method public final getRestLine-XSAIIZE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 61
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextIndent(firstLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
