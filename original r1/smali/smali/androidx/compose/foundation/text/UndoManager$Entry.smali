.class final Landroidx/compose/foundation/text/UndoManager$Entry;
.super Ljava/lang/Object;
.source "UndoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/text/UndoManager$Entry;",
        "",
        "next",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V",
        "getNext",
        "()Landroidx/compose/foundation/text/UndoManager$Entry;",
        "setNext",
        "(Landroidx/compose/foundation/text/UndoManager$Entry;)V",
        "getValue",
        "()Landroidx/compose/ui/text/input/TextFieldValue;",
        "setValue",
        "(Landroidx/compose/ui/text/input/TextFieldValue;)V",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private next:Landroidx/compose/foundation/text/UndoManager$Entry;

.field private value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    iput-object p2, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/UndoManager$Entry;-><init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method


# virtual methods
.method public final getNext()Landroidx/compose/foundation/text/UndoManager$Entry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    return-object p0
.end method

.method public final getValue()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method public final setNext(Landroidx/compose/foundation/text/UndoManager$Entry;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->next:Landroidx/compose/foundation/text/UndoManager$Entry;

    return-void
.end method

.method public final setValue(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method
