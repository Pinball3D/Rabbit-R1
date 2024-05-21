.class public final Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineHeightStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;",
        "",
        "topRatio",
        "",
        "constructor-impl",
        "(F)F",
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
.field private static final Bottom:F

.field private static final Center:F

.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

.field private static final Proportional:F

.field private static final Top:F


# instance fields
.field private final topRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 257
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 265
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 288
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:F

    return-void
.end method

.method private synthetic constructor <init>(F)V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    return-void
.end method

.method public static final synthetic access$getBottom$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:F

    return v0
.end method

.method public static final synthetic access$getCenter$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    return v0
.end method

.method public static final synthetic access$getProportional$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:F

    return v0
.end method

.method public static final synthetic access$getTop$cp()F
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:F

    return v0
.end method

.method public static final synthetic box-impl(F)Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    return-object v0
.end method

.method public static constructor-impl(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    :goto_0
    return p0

    .line 200
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "topRatio should be in [0..1] range or -1"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static equals-impl(FLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->unbox-impl()F

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

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "LineHeightStyle.Alignment.Top"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "LineHeightStyle.Alignment.Center"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_2

    const-string p0, "LineHeightStyle.Alignment.Proportional"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:F

    cmpg-float v0, p0, v0

    if-nez v0, :cond_3

    const-string p0, "LineHeightStyle.Alignment.Bottom"

    goto :goto_0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineHeightStyle.Alignment(topPercentage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->equals-impl(FLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->hashCode-impl(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 205
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    return p0
.end method
