.class public final Landroidx/compose/ui/text/input/PlatformTextInputAdapter_androidKt;
.super Ljava/lang/Object;
.source "PlatformTextInputAdapter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "dispose",
        "",
        "Landroidx/compose/ui/text/input/PlatformTextInputAdapter;",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final dispose(Landroidx/compose/ui/text/input/PlatformTextInputAdapter;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p0}, Landroidx/compose/ui/text/input/PlatformTextInputAdapter;->onDisposed()V

    return-void
.end method
