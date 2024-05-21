.class final Landroidx/compose/ui/text/font/FontVariation$SettingInt;
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
    name = "SettingInt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0016J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontVariation$SettingInt;",
        "Landroidx/compose/ui/text/font/FontVariation$Setting;",
        "axisName",
        "",
        "value",
        "",
        "(Ljava/lang/String;I)V",
        "getAxisName",
        "()Ljava/lang/String;",
        "needsDensity",
        "",
        "getNeedsDensity",
        "()Z",
        "getValue",
        "()I",
        "equals",
        "other",
        "",
        "hashCode",
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

.field private final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "axisName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->axisName:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 178
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->getAxisName()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->getAxisName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    .line 181
    iget p1, p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAxisName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->axisName:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedsDensity()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->needsDensity:Z

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->getAxisName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontVariation.Setting(axisName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toVariationValue(Landroidx/compose/ui/unit/Density;)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->value:I

    int-to-float p0, p0

    return p0
.end method
