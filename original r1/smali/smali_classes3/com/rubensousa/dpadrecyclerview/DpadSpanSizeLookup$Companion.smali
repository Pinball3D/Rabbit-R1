.class public final Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;
.super Ljava/lang/Object;
.source "DpadSpanSizeLookup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;",
        "",
        "()V",
        "DEFAULT",
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "getDEFAULT$dpadrecyclerview_release",
        "()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "findFirstKeyLessThan",
        "",
        "cache",
        "Landroid/util/SparseIntArray;",
        "position",
        "findFirstKeyLessThan$dpadrecyclerview_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findFirstKeyLessThan$dpadrecyclerview_release(Landroid/util/SparseIntArray;I)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "cache"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_1

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    .line 68
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public final getDEFAULT$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
    .locals 0

    .line 49
    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->access$getDEFAULT$cp()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object p0

    return-object p0
.end method
