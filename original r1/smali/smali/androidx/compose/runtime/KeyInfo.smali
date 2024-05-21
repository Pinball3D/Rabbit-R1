.class public final Landroidx/compose/runtime/KeyInfo;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001B1\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/runtime/KeyInfo;",
        "",
        "key",
        "",
        "objectKey",
        "location",
        "nodes",
        "index",
        "(ILjava/lang/Object;III)V",
        "getIndex",
        "()I",
        "getKey",
        "getLocation",
        "getNodes",
        "getObjectKey",
        "()Ljava/lang/Object;",
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
.field private final index:I

.field private final key:I

.field private final location:I

.field private final nodes:I

.field private final objectKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/KeyInfo;->key:I

    iput-object p2, p0, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/KeyInfo;->location:I

    iput p4, p0, Landroidx/compose/runtime/KeyInfo;->nodes:I

    iput p5, p0, Landroidx/compose/runtime/KeyInfo;->index:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/KeyInfo;->index:I

    return p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/KeyInfo;->key:I

    return p0
.end method

.method public final getLocation()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/KeyInfo;->location:I

    return p0
.end method

.method public final getNodes()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/KeyInfo;->nodes:I

    return p0
.end method

.method public final getObjectKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    return-object p0
.end method
