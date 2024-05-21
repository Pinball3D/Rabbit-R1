.class public final Landroidx/compose/ui/text/font/FontVariation;
.super Ljava/lang/Object;
.source "FontVariation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontVariation$Setting;,
        Landroidx/compose/ui/text/font/FontVariation$SettingFloat;,
        Landroidx/compose/ui/text/font/FontVariation$SettingInt;,
        Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;,
        Landroidx/compose/ui/text/font/FontVariation$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0005\u0003\u001d\u001e\u001f\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J7\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0010\"\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u001b\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0014J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontVariation;",
        "",
        "()V",
        "Setting",
        "Landroidx/compose/ui/text/font/FontVariation$Setting;",
        "name",
        "",
        "value",
        "",
        "Settings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "weight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "style",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "settings",
        "",
        "Settings-6EWAqTQ",
        "(Landroidx/compose/ui/text/font/FontWeight;I[Landroidx/compose/ui/text/font/FontVariation$Setting;)Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "grade",
        "",
        "italic",
        "opticalSizing",
        "textSize",
        "Landroidx/compose/ui/unit/TextUnit;",
        "opticalSizing--R2X_6o",
        "(J)Landroidx/compose/ui/text/font/FontVariation$Setting;",
        "slant",
        "width",
        "SettingFloat",
        "SettingInt",
        "SettingTextUnit",
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

.field public static final INSTANCE:Landroidx/compose/ui/text/font/FontVariation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/FontVariation;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/FontVariation;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/FontVariation;->INSTANCE:Landroidx/compose/ui/text/font/FontVariation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Setting(Ljava/lang/String;F)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 223
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;-><init>(Ljava/lang/String;F)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 221
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Name must be exactly four characters. Actual: \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs Settings-6EWAqTQ(Landroidx/compose/ui/text/font/FontWeight;I[Landroidx/compose/ui/text/font/FontVariation$Setting;)Landroidx/compose/ui/text/font/FontVariation$Settings;
    .locals 3

    const-string/jumbo v0, "weight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$Settings;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontVariation;->weight(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontVariation;->italic(F)Landroidx/compose/ui/text/font/FontVariation$Setting;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p0

    new-array p0, p0, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    return-object v0
.end method

.method public final grade(I)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const/16 p0, -0x3e8

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3e9

    if-ge p1, p0, :cond_0

    .line 353
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    const-string v0, "GRAD"

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;-><init>(Ljava/lang/String;I)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 350
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'GRAD\' must be in -1000..1000"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final italic(F)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    .line 245
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;

    const-string v0, "ital"

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;-><init>(Ljava/lang/String;F)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 243
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'ital\' must be in 0.0f..1.0f. Actual: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final opticalSizing--R2X_6o(J)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 2

    .line 266
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->isSp-impl(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 269
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;

    const-string v0, "opsz"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 266
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'opsz\' must be provided in sp units"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final slant(F)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const/high16 p0, -0x3d4c0000    # -90.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    .line 286
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;

    const-string/jumbo v0, "slnt"

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;-><init>(Ljava/lang/String;F)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'slnt\' must be in -90f..90f. Actual: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final weight(I)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const/4 p0, 0x1

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3e9

    if-ge p1, p0, :cond_0

    .line 331
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    const-string/jumbo v0, "wght"

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;-><init>(Ljava/lang/String;I)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 329
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'wght\' value must be in [1, 1000]. Actual: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 328
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final width(F)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 1

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    .line 304
    new-instance p0, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;

    const-string/jumbo v0, "wdth"

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;-><init>(Ljava/lang/String;F)V

    check-cast p0, Landroidx/compose/ui/text/font/FontVariation$Setting;

    return-object p0

    .line 302
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'wdth\' must be strictly > 0.0f. Actual: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
