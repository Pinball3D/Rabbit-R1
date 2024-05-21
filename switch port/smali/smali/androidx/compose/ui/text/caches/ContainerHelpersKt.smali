.class public final Landroidx/compose/ui/text/caches/ContainerHelpersKt;
.super Ljava/lang/Object;
.source "ContainerHelpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0000X\u0081\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "EMPTY_INTS",
        "",
        "EMPTY_OBJECTS",
        "",
        "",
        "[Ljava/lang/Object;",
        "binarySearchInternal",
        "",
        "size",
        "value",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final EMPTY_INTS:[I

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_INTS:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static final binarySearchInternal([III)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 39
    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method
