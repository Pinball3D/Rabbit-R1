.class public final Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;
.super Ljava/lang/Object;
.source "SubPositionAlignment.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/ViewAlignment;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005BK\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c2\u0003JO\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007H\u00c6\u0001J\u0008\u0010!\u001a\u00020\u0007H\u0016J\u0013\u0010\"\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\u0006\u0010%\u001a\u00020\u0007J\t\u0010&\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\u0018\u0010)\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0007H\u0016R\u0014\u0010\r\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u000c\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u0006-"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;",
        "Lcom/rubensousa/dpadrecyclerview/ViewAlignment;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "offset",
        "",
        "fraction",
        "",
        "isFractionEnabled",
        "",
        "includePadding",
        "alignToBaseline",
        "alignmentViewId",
        "focusViewId",
        "(IFZZZII)V",
        "getAlignToBaseline",
        "()Z",
        "getAlignmentViewId",
        "()I",
        "getFraction",
        "()F",
        "getIncludePadding",
        "getOffset",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "getFocusViewId",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;


# instance fields
.field private final alignToBaseline:Z

.field private final alignmentViewId:I

.field private final focusViewId:I

.field private final fraction:F

.field private final includePadding:Z

.field private final isFractionEnabled:Z

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->CREATOR:Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;-><init>(IFZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IFZZZII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    iput-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    iput-boolean p4, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    iput-boolean p5, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    iput p6, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    iput p7, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    .line 58
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getFraction()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p1, p0

    if-gtz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fraction must be a value between 0f and 1f"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IFZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    const/4 v0, -0x1

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move p7, v0

    .line 28
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;-><init>(IFZZZII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 68
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v4

    .line 69
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    move v4, v0

    .line 63
    invoke-direct/range {v1 .. v8}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;-><init>(IFZZZII)V

    return-void
.end method

.method private final component7()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    return p0
.end method

.method public static synthetic copy$default(Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;IFZZZIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->copy(IFZZZII)Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    return p0
.end method

.method public final copy(IFZZZII)Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;
    .locals 8

    new-instance p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;-><init>(IFZZZII)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    iget-boolean v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    iget-boolean v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    iget-boolean v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    iget v3, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    iget p1, p1, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getAlignToBaseline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    return p0
.end method

.method public final getAlignmentViewId()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    return p0
.end method

.method public final getFocusViewId()I
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    return p0
.end method

.method public getFraction()F
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    return p0
.end method

.method public getIncludePadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    return p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isFractionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubPositionAlignment(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->fraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFractionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includePadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->includePadding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alignToBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignToBaseline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alignmentViewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focusViewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getOffset()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getFraction()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->isFractionEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getIncludePadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->getAlignToBaseline()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->alignmentViewId:I

    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/SubPositionAlignment;->focusViewId:I

    .line 80
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
