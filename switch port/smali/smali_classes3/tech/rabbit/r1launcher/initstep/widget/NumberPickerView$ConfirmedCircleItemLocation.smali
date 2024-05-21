.class final Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;
.super Ljava/lang/Object;
.source "NumberPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfirmedCircleItemLocation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\n\"\u0004\u0008\u0015\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\n\u00a8\u0006\""
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;",
        "",
        "itemText",
        "",
        "cx",
        "",
        "cy",
        "radius",
        "(Ljava/lang/String;FFF)V",
        "getCx",
        "()F",
        "setCx",
        "(F)V",
        "getCy",
        "getItemText",
        "()Ljava/lang/String;",
        "offsetX",
        "getOffsetX",
        "setOffsetX",
        "offsetXTemp",
        "getOffsetXTemp",
        "setOffsetXTemp",
        "getRadius",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_productionEnvRelease"
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
.field private cx:F

.field private final cy:F

.field private final itemText:Ljava/lang/String;

.field private offsetX:F

.field private offsetXTemp:F

.field private final radius:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFF)V
    .locals 1

    const-string v0, "itemText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    iput p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    iput p3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cy:F

    iput p4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->radius:F

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;Ljava/lang/String;FFFILjava/lang/Object;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cy:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->radius:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->copy(Ljava/lang/String;FFF)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cy:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->radius:F

    return p0
.end method

.method public final copy(Ljava/lang/String;FFF)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;
    .locals 0

    const-string p0, "itemText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;-><init>(Ljava/lang/String;FFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string v0, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.widget.NumberPickerView.ConfirmedCircleItemLocation"

    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    .line 117
    iget-object p1, p1, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getCx()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    return p0
.end method

.method public final getCy()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cy:F

    return p0
.end method

.method public final getItemText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    return-object p0
.end method

.method public final getOffsetX()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->offsetX:F

    return p0
.end method

.method public final getOffsetXTemp()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->offsetXTemp:F

    return p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->radius:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setCx(F)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    return-void
.end method

.method public final setOffsetX(F)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->offsetX:F

    return-void
.end method

.method public final setOffsetXTemp(F)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->offsetXTemp:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfirmedCircleItemLocation(itemText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->itemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->cy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$ConfirmedCircleItemLocation;->radius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
