.class final Landroidx/compose/material3/DismissState$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeToDismiss.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DismissState$Companion;->Saver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material3/DismissValue;",
        "Landroidx/compose/material3/DismissState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/DismissState;",
        "it",
        "Landroidx/compose/material3/DismissValue;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $confirmValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material3/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionalThreshold:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DismissState$Companion$Saver$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/material3/DismissState$Companion$Saver$2;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/material3/DismissValue;)Landroidx/compose/material3/DismissState;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroidx/compose/material3/DismissState;

    iget-object v1, p0, Landroidx/compose/material3/DismissState$Companion$Saver$2;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/material3/DismissState$Companion$Saver$2;->$positionalThreshold:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p1, v1, p0}, Landroidx/compose/material3/DismissState;-><init>(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Landroidx/compose/material3/DismissValue;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DismissState$Companion$Saver$2;->invoke(Landroidx/compose/material3/DismissValue;)Landroidx/compose/material3/DismissState;

    move-result-object p0

    return-object p0
.end method
