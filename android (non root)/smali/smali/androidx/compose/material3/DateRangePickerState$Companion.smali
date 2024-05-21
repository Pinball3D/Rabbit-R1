.class public final Landroidx/compose/material3/DateRangePickerState$Companion;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/DateRangePickerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u00030\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/material3/DateRangePickerState$Companion;",
        "",
        "()V",
        "Saver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/compose/material3/DateRangePickerState;",
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

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/DateRangePickerState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Saver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/DateRangePickerState;",
            "*>;"
        }
    .end annotation

    .line 280
    sget-object p0, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$1;->INSTANCE:Landroidx/compose/material3/DateRangePickerState$Companion$Saver$1;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    sget-object v0, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;->INSTANCE:Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
