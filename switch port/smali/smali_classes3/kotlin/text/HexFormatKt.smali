.class public final Lkotlin/text/HexFormatKt;
.super Ljava/lang/Object;
.source "HexFormat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "HexFormat",
        "Lkotlin/text/HexFormat;",
        "builderAction",
        "Lkotlin/Function1;",
        "Lkotlin/text/HexFormat$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final HexFormat(Lkotlin/jvm/functions/Function1;)Lkotlin/text/HexFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/text/HexFormat$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/text/HexFormat;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lkotlin/text/HexFormat$Builder;

    invoke-direct {v0}, Lkotlin/text/HexFormat$Builder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/text/HexFormat$Builder;->build()Lkotlin/text/HexFormat;

    move-result-object p0

    return-object p0
.end method
