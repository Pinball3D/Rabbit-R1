.class public final Landroidx/compose/ui/semantics/CollectionItemInfo;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/CollectionItemInfo;",
        "",
        "rowIndex",
        "",
        "rowSpan",
        "columnIndex",
        "columnSpan",
        "(IIII)V",
        "getColumnIndex",
        "()I",
        "getColumnSpan",
        "getRowIndex",
        "getRowSpan",
        "ui_release"
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


# instance fields
.field private final columnIndex:I

.field private final columnSpan:I

.field private final rowIndex:I

.field private final rowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    iput p2, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    iput p3, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    iput p4, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    return-void
.end method


# virtual methods
.method public final getColumnIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    return p0
.end method

.method public final getColumnSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    return p0
.end method

.method public final getRowIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    return p0
.end method

.method public final getRowSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    return p0
.end method
