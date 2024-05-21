.class public final Landroidx/compose/ui/text/input/GapBuffer_jvmKt;
.super Ljava/lang/Object;
.source "GapBuffer.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "toCharArray",
        "",
        "",
        "destination",
        "",
        "destinationOffset",
        "",
        "startIndex",
        "endIndex",
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
.method public static final toCharArray(Ljava/lang/String;[CIII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p3, p4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method
