.class final Landroidx/compose/ui/text/style/ColorStyle;
.super Ljava/lang/Object;
.source "TextForegroundStyle.kt"

# interfaces
.implements Landroidx/compose/ui/text/style/TextForegroundStyle;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextForegroundStyle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextForegroundStyle.kt\nandroidx/compose/ui/text/style/ColorStyle\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,148:1\n646#2:149\n*S KotlinDebug\n*F\n+ 1 TextForegroundStyle.kt\nandroidx/compose/ui/text/style/ColorStyle\n*L\n94#1:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u000fJ \u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\r\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0010\u0010\u000f\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/ColorStyle;",
        "Landroidx/compose/ui/text/style/TextForegroundStyle;",
        "value",
        "Landroidx/compose/ui/graphics/Color;",
        "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "alpha",
        "",
        "getAlpha",
        "()F",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "getBrush",
        "()Landroidx/compose/ui/graphics/Brush;",
        "color",
        "getColor-0d7_KjU",
        "()J",
        "getValue-0d7_KjU",
        "J",
        "component1",
        "component1-0d7_KjU",
        "copy",
        "copy-8_81llA",
        "(J)Landroidx/compose/ui/text/style/ColorStyle;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final value:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    .line 149
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    return-void
.end method

.method public static synthetic copy-8_81llA$default(Landroidx/compose/ui/text/style/ColorStyle;JILjava/lang/Object;)Landroidx/compose/ui/text/style/ColorStyle;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/style/ColorStyle;->copy-8_81llA(J)Landroidx/compose/ui/text/style/ColorStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    return-wide v0
.end method

.method public final copy-8_81llA(J)Landroidx/compose/ui/text/style/ColorStyle;
    .locals 1

    new-instance p0, Landroidx/compose/ui/text/style/ColorStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/ColorStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/ColorStyle;

    iget-wide v3, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    iget-wide p0, p1, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getAlpha()F
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/ColorStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result p0

    return p0
.end method

.method public getBrush()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    return-wide v0
.end method

.method public final getValue-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorStyle(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/text/style/ColorStyle;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

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
