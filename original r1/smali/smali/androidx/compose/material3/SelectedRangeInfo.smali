.class public final Landroidx/compose/material3/SelectedRangeInfo;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SelectedRangeInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB,\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/material3/SelectedRangeInfo;",
        "",
        "gridCoordinates",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "firstIsSelectionStart",
        "",
        "lastIsSelectionEnd",
        "(Lkotlin/Pair;ZZ)V",
        "getFirstIsSelectionStart",
        "()Z",
        "getGridCoordinates",
        "()Lkotlin/Pair;",
        "getLastIsSelectionEnd",
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


# static fields
.field public static final Companion:Landroidx/compose/material3/SelectedRangeInfo$Companion;


# instance fields
.field private final firstIsSelectionStart:Z

.field private final gridCoordinates:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final lastIsSelectionEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SelectedRangeInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/SelectedRangeInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SelectedRangeInfo;->Companion:Landroidx/compose/material3/SelectedRangeInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/Pair;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "gridCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SelectedRangeInfo;->gridCoordinates:Lkotlin/Pair;

    iput-boolean p2, p0, Landroidx/compose/material3/SelectedRangeInfo;->firstIsSelectionStart:Z

    iput-boolean p3, p0, Landroidx/compose/material3/SelectedRangeInfo;->lastIsSelectionEnd:Z

    return-void
.end method


# virtual methods
.method public final getFirstIsSelectionStart()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/SelectedRangeInfo;->firstIsSelectionStart:Z

    return p0
.end method

.method public final getGridCoordinates()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/SelectedRangeInfo;->gridCoordinates:Lkotlin/Pair;

    return-object p0
.end method

.method public final getLastIsSelectionEnd()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/SelectedRangeInfo;->lastIsSelectionEnd:Z

    return p0
.end method
