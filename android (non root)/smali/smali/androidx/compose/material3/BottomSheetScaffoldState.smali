.class public final Landroidx/compose/material3/BottomSheetScaffoldState;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/material3/BottomSheetScaffoldState;",
        "",
        "bottomSheetState",
        "Landroidx/compose/material3/SheetState;",
        "snackbarHostState",
        "Landroidx/compose/material3/SnackbarHostState;",
        "(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;)V",
        "getBottomSheetState",
        "()Landroidx/compose/material3/SheetState;",
        "getSnackbarHostState",
        "()Landroidx/compose/material3/SnackbarHostState;",
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
.field public static final $stable:I


# instance fields
.field private final bottomSheetState:Landroidx/compose/material3/SheetState;

.field private final snackbarHostState:Landroidx/compose/material3/SnackbarHostState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;)V
    .locals 1

    const-string v0, "bottomSheetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snackbarHostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    return-void
.end method


# virtual methods
.method public final getBottomSheetState()Landroidx/compose/material3/SheetState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material3/SheetState;

    return-object p0
.end method

.method public final getSnackbarHostState()Landroidx/compose/material3/SnackbarHostState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    return-object p0
.end method
