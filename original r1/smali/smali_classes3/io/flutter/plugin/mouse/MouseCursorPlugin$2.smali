.class Lio/flutter/plugin/mouse/MouseCursorPlugin$2;
.super Ljava/util/HashMap;
.source "MouseCursorPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/mouse/MouseCursorPlugin;->resolveSystemCursor(Ljava/lang/String;)Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/mouse/MouseCursorPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/mouse/MouseCursorPlugin;)V
    .locals 5

    iput-object p1, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->this$0:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x3f2

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "alias"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f5

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "allScroll"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e8

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "basic"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ee

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cell"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ea

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e9

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contextMenu"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3f3

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "copy"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3f4

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "forbidden"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3fc

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grab"

    invoke-virtual {p0, v2, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3fd

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grabbing"

    invoke-virtual {p0, v2, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3eb

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "help"

    invoke-virtual {p0, v2, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "move"

    .line 61
    invoke-virtual {p0, v1, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "none"

    invoke-virtual {p0, v1, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "noDrop"

    .line 63
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3ef

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "precise"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f0

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f6

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "resizeColumn"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3f7

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "resizeDown"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3f8

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resizeUpLeft"

    invoke-virtual {p0, v2, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x3f9

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "resizeDownRight"

    invoke-virtual {p0, v4, v3}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "resizeLeft"

    .line 70
    invoke-virtual {p0, v4, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "resizeLeftRight"

    .line 71
    invoke-virtual {p0, v4, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "resizeRight"

    .line 72
    invoke-virtual {p0, v4, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeRow"

    .line 73
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeUp"

    .line 74
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeUpDown"

    .line 75
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, v2, v3}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeUpRight"

    .line 77
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeUpLeftDownRight"

    .line 78
    invoke-virtual {p0, p1, v3}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resizeUpRightDownLeft"

    .line 79
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f1

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "verticalText"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3ec

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "wait"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3fa

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "zoomIn"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3fb

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "zoomOut"

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
