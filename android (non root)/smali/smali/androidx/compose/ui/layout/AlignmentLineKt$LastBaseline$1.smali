.class final synthetic Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AlignmentLine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/AlignmentLineKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
.field public static final INSTANCE:Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;->INSTANCE:Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const-class v2, Lkotlin/math/MathKt;

    const-string v3, "max"

    const-string v4, "max(II)I"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(II)Ljava/lang/Integer;
    .locals 0

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/AlignmentLineKt$LastBaseline$1;->invoke(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
