.class public final Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;",
        "",
        "()V",
        "Default",
        "Landroidx/compose/ui/text/font/PlatformResolveInterceptor;",
        "getDefault$ui_text_release",
        "()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

.field private static final Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    .line 126
    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault$ui_text_release()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .locals 0

    sget-object p0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-object p0
.end method
