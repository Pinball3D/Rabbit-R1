.class public final Landroidx/compose/ui/platform/AndroidComposeView$Companion;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeView$Companion;",
        "",
        "()V",
        "FocusTag",
        "",
        "MaximumLayerCacheSize",
        "",
        "getBooleanMethod",
        "Ljava/lang/reflect/Method;",
        "systemPropertiesClass",
        "Ljava/lang/Class;",
        "getIsShowingLayoutBounds",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getIsShowingLayoutBounds(Landroidx/compose/ui/platform/AndroidComposeView$Companion;)Z
    .locals 0

    .line 1813
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->getIsShowingLayoutBounds()Z

    move-result p0

    return p0
.end method

.method private final getIsShowingLayoutBounds()Z
    .locals 7

    const/4 p0, 0x0

    .line 1822
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "android.os.SystemProperties"

    .line 1823
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setSystemPropertiesClass$cp(Ljava/lang/Class;)V

    .line 1824
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getSystemPropertiesClass$cp()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "getBoolean"

    new-array v5, v2, [Ljava/lang/Class;

    .line 1826
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, p0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 1824
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$setGetBooleanMethod$cp(Ljava/lang/reflect/Method;)V

    .line 1830
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getGetBooleanMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "debug.layout"

    aput-object v4, v2, p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return p0
.end method
