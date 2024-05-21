.class final Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldKeyInput.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->invoke(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
        "Landroidx/compose/ui/text/input/EditCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
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
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    invoke-direct {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)Landroidx/compose/ui/text/input/EditCommand;
    .locals 2

    const-string p0, "$this$deleteIfSelectedOr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 131
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPrecedingCharacterIndex()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;->invoke(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p0

    return-object p0
.end method
