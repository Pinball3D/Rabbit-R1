.class final Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;
.super Ljava/lang/Object;
.source "FontVariation.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/FontVariation$Setting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontVariation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingTextUnit"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontVariation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontVariation.kt\nandroidx/compose/ui/text/font/FontVariation$SettingTextUnit\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;",
        "Landroidx/compose/ui/text/font/FontVariation$Setting;",
        "axisName",
        "",
        "value",
        "Landroidx/compose/ui/unit/TextUnit;",
        "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAxisName",
        "()Ljava/lang/String;",
        "needsDensity",
        "",
        "getNeedsDensity",
        "()Z",
        "getValue-XSAIIZE",
        "()J",
        "J",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "toVariationValue",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
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
.field private final axisName:Ljava/lang/String;

.field private final needsDensity:Z

.field private final value:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "axisName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->axisName:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->needsDensity:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->getAxisName()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->getAxisName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    .line 152
    iget-wide p0, p1, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAxisName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->axisName:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedsDensity()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->needsDensity:Z

    return p0
.end method

.method public final getValue-XSAIIZE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->getAxisName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    .line 159
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontVariation.Setting(axisName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

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

.method public toVariationValue(Landroidx/compose/ui/unit/Density;)F
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;->value:J

    .line 142
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "density must not be null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
