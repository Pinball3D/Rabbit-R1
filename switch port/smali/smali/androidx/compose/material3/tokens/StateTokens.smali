.class public final Landroidx/compose/material3/tokens/StateTokens;
.super Ljava/lang/Object;
.source "StateTokens.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/StateTokens;",
        "",
        "()V",
        "DraggedStateLayerOpacity",
        "",
        "FocusStateLayerOpacity",
        "HoverStateLayerOpacity",
        "PressedStateLayerOpacity",
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
.field public static final DraggedStateLayerOpacity:F = 0.16f

.field public static final FocusStateLayerOpacity:F = 0.12f

.field public static final HoverStateLayerOpacity:F = 0.08f

.field public static final INSTANCE:Landroidx/compose/material3/tokens/StateTokens;

.field public static final PressedStateLayerOpacity:F = 0.12f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/StateTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/StateTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/StateTokens;->INSTANCE:Landroidx/compose/material3/tokens/StateTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
