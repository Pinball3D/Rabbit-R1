.class public final Landroidx/compose/ui/graphics/drawscope/Stroke;
.super Landroidx/compose/ui/graphics/drawscope/DrawStyle;
.source "DrawScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB<\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001c\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "width",
        "",
        "miter",
        "cap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "join",
        "Landroidx/compose/ui/graphics/StrokeJoin;",
        "pathEffect",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getCap-KaPHkGw",
        "()I",
        "I",
        "getJoin-LxFBmk8",
        "getMiter",
        "()F",
        "getPathEffect",
        "()Landroidx/compose/ui/graphics/PathEffect;",
        "getWidth",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

.field private static final DefaultCap:I

.field private static final DefaultJoin:I

.field public static final DefaultMiter:F = 4.0f

.field public static final HairlineWidth:F


# instance fields
.field private final cap:I

.field private final join:I

.field private final miter:F

.field private final pathEffect:Landroidx/compose/ui/graphics/PathEffect;

.field private final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->Companion:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    .line 938
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultCap:I

    .line 943
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultJoin:I

    return-void
.end method

.method private constructor <init>(FFIILandroidx/compose/ui/graphics/PathEffect;)V
    .locals 1

    const/4 v0, 0x0

    .line 922
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/drawscope/DrawStyle;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    iput p2, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    iput p3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    iput p4, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    iput-object p5, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    return-void
.end method

.method public synthetic constructor <init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/high16 p2, 0x40800000    # 4.0f

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget p3, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultCap:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    sget p4, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultJoin:I

    :cond_3
    move v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    .line 916
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;)V

    return-void
.end method

.method public static final synthetic access$getDefaultCap$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultCap:I

    return v0
.end method

.method public static final synthetic access$getDefaultJoin$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->DefaultJoin:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 948
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    .line 950
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v3, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    .line 951
    iget v3, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    .line 952
    iget v3, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    .line 953
    iget v3, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    .line 954
    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public final getCap-KaPHkGw()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    return p0
.end method

.method public final getJoin-LxFBmk8()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    return p0
.end method

.method public final getMiter()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    return p0
.end method

.method public final getPathEffect()Landroidx/compose/ui/graphics/PathEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    return-object p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    .line 960
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    .line 961
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    .line 962
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeCap;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    .line 963
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeJoin;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    if-eqz p0, :cond_0

    .line 964
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stroke(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", miter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeCap;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", join="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeJoin;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
