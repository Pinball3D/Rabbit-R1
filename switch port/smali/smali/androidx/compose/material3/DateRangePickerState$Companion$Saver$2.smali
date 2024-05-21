.class final Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerState$Companion;->Saver()Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/material3/DateRangePickerState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateRangePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerState$Companion$Saver$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,809:1\n1#2:810\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/DateRangePickerState;",
        "value",
        "",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;

    invoke-direct {v0}, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;-><init>()V

    sput-object v0, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;->INSTANCE:Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/material3/DateRangePickerState;
    .locals 1

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object p0, Landroidx/compose/material3/StateData;->Companion:Landroidx/compose/material3/StateData$Companion;

    invoke-virtual {p0}, Landroidx/compose/material3/StateData$Companion;->Saver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/compose/material3/StateData;

    new-instance p1, Landroidx/compose/material3/DateRangePickerState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/compose/material3/DateRangePickerState;-><init>(Landroidx/compose/material3/StateData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroidx/compose/material3/DateRangePickerState$Companion$Saver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/material3/DateRangePickerState;

    move-result-object p0

    return-object p0
.end method
