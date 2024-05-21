.class public final Landroidx/compose/ui/text/style/BaselineShift;
.super Ljava/lang/Object;
.source "BaselineShift.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/BaselineShift$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/BaselineShift;",
        "",
        "multiplier",
        "",
        "constructor-impl",
        "(F)F",
        "getMultiplier",
        "()F",
        "equals",
        "",
        "other",
        "equals-impl",
        "(FLjava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(F)I",
        "toString",
        "",
        "toString-impl",
        "(F)Ljava/lang/String;",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

.field private static final None:F

.field private static final Subscript:F

.field private static final Superscript:F


# instance fields
.field private final multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/BaselineShift$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/BaselineShift$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/BaselineShift;->Superscript:F

    const/high16 v0, -0x41000000    # -0.5f

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/BaselineShift;->Subscript:F

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/BaselineShift;->None:F

    return-void
.end method

.method private synthetic constructor <init>(F)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    return-void
.end method

.method public static final synthetic access$getNone$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/BaselineShift;->None:F

    return v0
.end method

.method public static final synthetic access$getSubscript$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/BaselineShift;->Subscript:F

    return v0
.end method

.method public static final synthetic access$getSuperscript$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/BaselineShift;->Superscript:F

    return v0
.end method

.method public static final synthetic box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    return-object v0
.end method

.method public static constructor-impl(F)F
    .locals 0

    return p0
.end method

.method public static equals-impl(FLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/BaselineShift;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(FF)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public static toString-impl(F)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaselineShift(multiplier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl(FLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getMultiplier()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {p0}, Landroidx/compose/ui/text/style/BaselineShift;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    invoke-static {p0}, Landroidx/compose/ui/text/style/BaselineShift;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    return p0
.end method
