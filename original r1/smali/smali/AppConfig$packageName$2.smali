.class final LAppConfig$packageName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:LAppConfig$packageName$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAppConfig$packageName$2;

    invoke-direct {v0}, LAppConfig$packageName$2;-><init>()V

    sput-object v0, LAppConfig$packageName$2;->INSTANCE:LAppConfig$packageName$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, LAppConfig$packageName$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 0

    .line 12
    sget-object p0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {p0}, LAppConfig;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
