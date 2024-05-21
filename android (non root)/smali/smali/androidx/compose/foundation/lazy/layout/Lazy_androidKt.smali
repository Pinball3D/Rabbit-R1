.class public final Landroidx/compose/foundation/lazy/layout/Lazy_androidKt;
.super Ljava/lang/Object;
.source "Lazy.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "getDefaultLazyLayoutKey",
        "",
        "index",
        "",
        "foundation_release"
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
.method public static final getDefaultLazyLayoutKey(I)Ljava/lang/Object;
    .locals 1

    .line 25
    new-instance v0, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    return-object v0
.end method
