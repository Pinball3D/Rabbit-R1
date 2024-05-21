.class public final Landroidx/compose/material3/SwipeToDismissDefaults;
.super Ljava/lang/Object;
.source "SwipeToDismiss.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R7\u0010\u0003\u001a(\u0012\u0004\u0012\u00020\u0005\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/material3/SwipeToDismissDefaults;",
        "",
        "()V",
        "FixedPositionalThreshold",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "totalDistance",
        "Lkotlin/ExtensionFunctionType;",
        "getFixedPositionalThreshold",
        "()Lkotlin/jvm/functions/Function2;",
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

.field private static final FixedPositionalThreshold:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material3/SwipeToDismissDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/SwipeToDismissDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SwipeToDismissDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SwipeToDismissDefaults;->INSTANCE:Landroidx/compose/material3/SwipeToDismissDefaults;

    .line 276
    sget-object v0, Landroidx/compose/material3/SwipeToDismissDefaults$FixedPositionalThreshold$1;->INSTANCE:Landroidx/compose/material3/SwipeToDismissDefaults$FixedPositionalThreshold$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Landroidx/compose/material3/SwipeToDismissDefaults;->FixedPositionalThreshold:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFixedPositionalThreshold()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/material3/SwipeToDismissDefaults;->FixedPositionalThreshold:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method
