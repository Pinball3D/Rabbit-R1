.class final Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;
.super Ljava/lang/Object;
.source "TextLayoutResult.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font$ResourceLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;",
        "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V",
        "load",
        "",
        "font",
        "Landroidx/compose/ui/text/font/Font;",
        "Companion",
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
.field public static final Companion:Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/text/font/Font$ResourceLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Landroidx/compose/ui/text/platform/SynchronizedObject;


# instance fields
.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->Companion:Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader$Companion;

    .line 287
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    .line 288
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;-><init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    return-void
.end method

.method public static final synthetic access$getCache$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-object v0
.end method

.method public static final synthetic access$setCache$cp(Ljava/util/Map;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by FontFamily.Resolver, this method should not be called"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FontFamily.Resolver.resolve(font, )"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/DeprecatedBridgeFontResourceLoader;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 270
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontKt;->toFontFamily(Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    .line 271
    invoke-interface {p1}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 272
    invoke-interface {p1}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 269
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ$default(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 273
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
