.class public final Landroidx/compose/ui/text/input/GapBufferKt;
.super Ljava/lang/Object;
.source "GapBuffer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "toCharArray",
        "",
        "",
        "destination",
        "",
        "destinationOffset",
        "",
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
.method public static final synthetic access$toCharArray(Ljava/lang/String;[CI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/input/GapBufferKt;->toCharArray(Ljava/lang/String;[CI)V

    return-void
.end method

.method private static final toCharArray(Ljava/lang/String;[CI)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/ui/text/input/GapBuffer_jvmKt;->toCharArray(Ljava/lang/String;[CIII)V

    return-void
.end method
