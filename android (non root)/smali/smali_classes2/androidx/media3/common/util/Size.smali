.class public final Landroidx/media3/common/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# static fields
.field public static final UNKNOWN:Landroidx/media3/common/util/Size;

.field public static final ZERO:Landroidx/media3/common/util/Size;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroidx/media3/common/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/util/Size;-><init>(II)V

    sput-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 33
    new-instance v0, Landroidx/media3/common/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/util/Size;-><init>(II)V

    sput-object v0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    if-eq p2, v0, :cond_2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 46
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/util/Size;->width:I

    iput p2, p0, Landroidx/media3/common/util/Size;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 71
    :cond_1
    instance-of v2, p1, Landroidx/media3/common/util/Size;

    if-eqz v2, :cond_2

    .line 72
    check-cast p1, Landroidx/media3/common/util/Size;

    iget v2, p0, Landroidx/media3/common/util/Size;->width:I

    .line 73
    iget v3, p1, Landroidx/media3/common/util/Size;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/media3/common/util/Size;->height:I

    iget p1, p1, Landroidx/media3/common/util/Size;->height:I

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/util/Size;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/util/Size;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/Size;->height:I

    iget p0, p0, Landroidx/media3/common/util/Size;->width:I

    shl-int/lit8 v1, p0, 0x10

    ushr-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/common/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/util/Size;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
