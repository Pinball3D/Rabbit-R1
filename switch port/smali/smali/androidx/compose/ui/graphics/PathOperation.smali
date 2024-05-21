.class public final Landroidx/compose/ui/graphics/PathOperation;
.super Ljava/lang/Object;
.source "PathOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PathOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/PathOperation;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
        "ui-graphics_release"
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
.field public static final Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

.field private static final Difference:I

.field private static final Intersect:I

.field private static final ReverseDifference:I

.field private static final Union:I

.field private static final Xor:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/PathOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/PathOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Difference:I

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Union:I

    const/4 v0, 0x3

    .line 78
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Xor:I

    const/4 v0, 0x4

    .line 92
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->ReverseDifference:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/PathOperation;->value:I

    return-void
.end method

.method public static final synthetic access$getDifference$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Difference:I

    return v0
.end method

.method public static final synthetic access$getIntersect$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    return v0
.end method

.method public static final synthetic access$getReverseDifference$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->ReverseDifference:I

    return v0
.end method

.method public static final synthetic access$getUnion$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Union:I

    return v0
.end method

.method public static final synthetic access$getXor$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Xor:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/graphics/PathOperation;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/PathOperation;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/PathOperation;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/graphics/PathOperation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/PathOperation;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Difference:I

    .line 96
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Difference"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    .line 97
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Intersect"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Union:I

    .line 98
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Union"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Xor:I

    .line 99
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Xor"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->ReverseDifference:I

    .line 100
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "ReverseDifference"

    goto :goto_0

    :cond_4
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PathOperation;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/PathOperation;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PathOperation;->value:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/PathOperation;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PathOperation;->value:I

    .line 95
    invoke-static {p0}, Landroidx/compose/ui/graphics/PathOperation;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PathOperation;->value:I

    return p0
.end method
