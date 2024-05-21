.class public final Landroidx/compose/runtime/JoinedKey;
.super Ljava/lang/Object;
.source "JoinedKey.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J!\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0002J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/runtime/JoinedKey;",
        "",
        "left",
        "right",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "getLeft",
        "()Ljava/lang/Object;",
        "getRight",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "hashCodeOf",
        "value",
        "toString",
        "",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;

.field private final right:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/runtime/JoinedKey;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/compose/runtime/JoinedKey;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/JoinedKey;->copy(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/JoinedKey;

    move-result-object p0

    return-object p0
.end method

.method private final hashCodeOf(Ljava/lang/Object;)I
    .locals 0

    .line 27
    instance-of p0, p1, Ljava/lang/Enum;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/JoinedKey;
    .locals 0

    new-instance p0, Landroidx/compose/runtime/JoinedKey;

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/runtime/JoinedKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/runtime/JoinedKey;

    iget-object v1, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLeft()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    return-object p0
.end method

.method public final getRight()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    .line 24
    invoke-direct {p0, v0}, Landroidx/compose/runtime/JoinedKey;->hashCodeOf(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/JoinedKey;->hashCodeOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JoinedKey(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/runtime/JoinedKey;->left:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/runtime/JoinedKey;->right:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
