.class public final Landroidx/compose/ui/text/input/ImeOptions;
.super Ljava/lang/Object;
.source "ImeOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/ImeOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB:\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJE\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\t\u001a\u00020\n\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/ImeOptions;",
        "",
        "singleLine",
        "",
        "capitalization",
        "Landroidx/compose/ui/text/input/KeyboardCapitalization;",
        "autoCorrect",
        "keyboardType",
        "Landroidx/compose/ui/text/input/KeyboardType;",
        "imeAction",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "(ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAutoCorrect",
        "()Z",
        "getCapitalization-IUNYP9k",
        "()I",
        "I",
        "getImeAction-eUduSuo",
        "getKeyboardType-PjHm6EE",
        "getSingleLine",
        "copy",
        "copy-uxg59PA",
        "(ZIZII)Landroidx/compose/ui/text/input/ImeOptions;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

.field private static final Default:Landroidx/compose/ui/text/input/ImeOptions;


# instance fields
.field private final autoCorrect:Z

.field private final capitalization:I

.field private final imeAction:I

.field private final keyboardType:I

.field private final singleLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/compose/ui/text/input/ImeOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/ImeOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    .line 54
    new-instance v0, Landroidx/compose/ui/text/input/ImeOptions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/ImeOptions;->Default:Landroidx/compose/ui/text/input/ImeOptions;

    return-void
.end method

.method private constructor <init>(ZIZII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    iput p2, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    iput-boolean p3, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    iput p4, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    iput p5, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    return-void
.end method

.method public synthetic constructor <init>(ZIZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 45
    sget-object p1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getNone-IUNYP9k()I

    move-result p2

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 47
    sget-object p1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result p4

    :cond_3
    move v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 48
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p5

    :cond_4
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    .line 43
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZII)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/text/input/ImeOptions;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/input/ImeOptions;->Default:Landroidx/compose/ui/text/input/ImeOptions;

    return-object v0
.end method

.method public static synthetic copy-uxg59PA$default(Landroidx/compose/ui/text/input/ImeOptions;ZIZIIILjava/lang/Object;)Landroidx/compose/ui/text/input/ImeOptions;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 58
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 59
    iget p2, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 60
    iget-boolean p3, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 61
    iget p4, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 62
    iget p5, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    .line 57
    invoke-virtual/range {p2 .. p7}, Landroidx/compose/ui/text/input/ImeOptions;->copy-uxg59PA(ZIZII)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-uxg59PA(ZIZII)Landroidx/compose/ui/text/input/ImeOptions;
    .locals 7

    .line 64
    new-instance p0, Landroidx/compose/ui/text/input/ImeOptions;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/ImeOptions;-><init>(ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/ImeOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    .line 77
    check-cast p1, Landroidx/compose/ui/text/input/ImeOptions;

    iget-boolean v3, p1, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    .line 78
    iget v3, p1, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    .line 79
    iget-boolean v3, p1, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    .line 80
    iget v3, p1, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    .line 81
    iget p1, p1, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAutoCorrect()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    return p0
.end method

.method public final getCapitalization-IUNYP9k()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    return p0
.end method

.method public final getImeAction-eUduSuo()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    return p0
.end method

.method public final getKeyboardType-PjHm6EE()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    return p0
.end method

.method public final getSingleLine()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    .line 88
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    .line 90
    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    .line 91
    invoke-static {p0}, Landroidx/compose/ui/text/input/ImeAction;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImeOptions(singleLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capitalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoCorrect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyboardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    invoke-static {v1}, Landroidx/compose/ui/text/input/KeyboardType;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    invoke-static {p0}, Landroidx/compose/ui/text/input/ImeAction;->toString-impl(I)Ljava/lang/String;

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
