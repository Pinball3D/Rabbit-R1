.class public final Landroidx/compose/material3/DismissState$Companion;
.super Ljava/lang/Object;
.source "SwipeToDismiss.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/DismissState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00082,\u0010\n\u001a(\u0012\u0004\u0012\u00020\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/DismissState$Companion;",
        "",
        "()V",
        "Saver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/compose/material3/DismissState;",
        "Landroidx/compose/material3/DismissValue;",
        "confirmValueChange",
        "Lkotlin/Function1;",
        "",
        "positionalThreshold",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "totalDistance",
        "Lkotlin/ExtensionFunctionType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/DismissState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Saver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/DismissState;",
            "Landroidx/compose/material3/DismissValue;",
            ">;"
        }
    .end annotation

    const-string p0, "confirmValueChange"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "positionalThreshold"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object p0, Landroidx/compose/material3/DismissState$Companion$Saver$1;->INSTANCE:Landroidx/compose/material3/DismissState$Companion$Saver$1;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    new-instance v0, Landroidx/compose/material3/DismissState$Companion$Saver$2;

    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/DismissState$Companion$Saver$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
