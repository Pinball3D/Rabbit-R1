.class final Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;

    invoke-direct {v0}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;-><init>()V

    sput-object v0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;->INSTANCE:Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    .line 1294
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1294
    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
