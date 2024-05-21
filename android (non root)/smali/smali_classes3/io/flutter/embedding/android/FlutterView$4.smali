.class Lio/flutter/embedding/android/FlutterView$4;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$4;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView$4;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 198
    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterView;->setWindowInfoListenerDisplayFeatures(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterView$4;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
