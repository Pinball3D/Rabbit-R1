.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "KeyMapping.kt"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/KeyMappingKt;->commonKeyMapping(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/KeyMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1",
        "Landroidx/compose/foundation/text/KeyMapping;",
        "map",
        "Landroidx/compose/foundation/text/KeyCommand;",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "map-ZmokQxo",
        "(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;",
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
.field final synthetic $shortcutModifier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 71
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->box-impl(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    .line 73
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getZ-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->box-impl(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 77
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    .line 78
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getC-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getInsert-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 79
    :cond_2
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getV-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 80
    :cond_3
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getX-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 81
    :cond_4
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getA-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 82
    :cond_5
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getY-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 83
    :cond_6
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getZ-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 86
    :cond_7
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto/16 :goto_1

    .line 87
    :cond_8
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 88
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    .line 89
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 90
    :cond_9
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 91
    :cond_a
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 92
    :cond_b
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 93
    :cond_c
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getPageUp-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 94
    :cond_d
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getPageDown-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 95
    :cond_e
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveHome-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 96
    :cond_f
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveEnd-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 97
    :cond_10
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getInsert-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 101
    :cond_11
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    .line 102
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 103
    :cond_12
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 104
    :cond_13
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 105
    :cond_14
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 106
    :cond_15
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getPageUp-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 107
    :cond_16
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getPageDown-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 108
    :cond_17
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveHome-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_1

    .line 109
    :cond_18
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveEnd-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 110
    :cond_19
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getEnter-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 111
    :cond_1a
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getBackspace-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 112
    :cond_1b
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDelete-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 113
    :cond_1c
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getPaste-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 114
    :cond_1d
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getCut-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 115
    :cond_1e
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getCopy-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_1

    .line 116
    :cond_1f
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getTab-EK5gGoQ()J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    :cond_20
    :goto_1
    return-object v1
.end method
