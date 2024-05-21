.class final Landroidx/compose/material3/ListItemType;
.super Ljava/lang/Object;
.source "ListItem.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ListItemType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/material3/ListItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0083@\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0014\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001a\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/ListItemType;",
        "",
        "lines",
        "",
        "constructor-impl",
        "(I)I",
        "compareTo",
        "other",
        "compareTo-yh95HIg",
        "(II)I",
        "equals",
        "",
        "",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
        "material3_release"
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
.field public static final Companion:Landroidx/compose/material3/ListItemType$Companion;

.field private static final OneLine:I

.field private static final ThreeLine:I

.field private static final TwoLine:I


# instance fields
.field private final lines:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/ListItemType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/ListItemType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/ListItemType;->Companion:Landroidx/compose/material3/ListItemType$Companion;

    const/4 v0, 0x1

    .line 412
    invoke-static {v0}, Landroidx/compose/material3/ListItemType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/ListItemType;->OneLine:I

    const/4 v0, 0x2

    .line 415
    invoke-static {v0}, Landroidx/compose/material3/ListItemType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/ListItemType;->TwoLine:I

    const/4 v0, 0x3

    .line 418
    invoke-static {v0}, Landroidx/compose/material3/ListItemType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/ListItemType;->ThreeLine:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/ListItemType;->lines:I

    return-void
.end method

.method public static final synthetic access$getOneLine$cp()I
    .locals 1

    sget v0, Landroidx/compose/material3/ListItemType;->OneLine:I

    return v0
.end method

.method public static final synthetic access$getThreeLine$cp()I
    .locals 1

    sget v0, Landroidx/compose/material3/ListItemType;->ThreeLine:I

    return v0
.end method

.method public static final synthetic access$getTwoLine$cp()I
    .locals 1

    sget v0, Landroidx/compose/material3/ListItemType;->TwoLine:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/material3/ListItemType;
    .locals 1

    new-instance v0, Landroidx/compose/material3/ListItemType;

    invoke-direct {v0, p0}, Landroidx/compose/material3/ListItemType;-><init>(I)V

    return-object v0
.end method

.method public static compareTo-yh95HIg(II)I
    .locals 0

    .line 408
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/material3/ListItemType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/material3/ListItemType;

    invoke-virtual {p1}, Landroidx/compose/material3/ListItemType;->unbox-impl()I

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListItemType(lines="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 404
    check-cast p1, Landroidx/compose/material3/ListItemType;

    invoke-virtual {p1}, Landroidx/compose/material3/ListItemType;->unbox-impl()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ListItemType;->compareTo-yh95HIg(I)I

    move-result p0

    return p0
.end method

.method public compareTo-yh95HIg(I)I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ListItemType;->lines:I

    .line 408
    invoke-static {p0, p1}, Landroidx/compose/material3/ListItemType;->compareTo-yh95HIg(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ListItemType;->lines:I

    invoke-static {p0, p1}, Landroidx/compose/material3/ListItemType;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ListItemType;->lines:I

    invoke-static {p0}, Landroidx/compose/material3/ListItemType;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ListItemType;->lines:I

    invoke-static {p0}, Landroidx/compose/material3/ListItemType;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ListItemType;->lines:I

    return p0
.end method
