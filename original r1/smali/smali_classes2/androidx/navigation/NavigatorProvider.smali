.class public Landroidx/navigation/NavigatorProvider;
.super Ljava/lang/Object;
.source "NavigatorProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavigatorProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigatorProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigatorProvider.kt\nandroidx/navigation/NavigatorProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006J*\u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006H\u0017J\'\u0010\u000f\u001a\u0002H\u0010\"\u000c\u0008\u0000\u0010\u0010*\u0006\u0012\u0002\u0008\u00030\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0012\u00a2\u0006\u0002\u0010\u0013J#\u0010\u000f\u001a\u0002H\u0010\"\u000c\u0008\u0000\u0010\u0010*\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u000e\u001a\u00020\u0005H\u0017\u00a2\u0006\u0002\u0010\u0014R\"\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\t8G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/navigation/NavigatorProvider;",
        "",
        "()V",
        "_navigators",
        "",
        "",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavDestination;",
        "navigators",
        "",
        "getNavigators",
        "()Ljava/util/Map;",
        "addNavigator",
        "navigator",
        "name",
        "getNavigator",
        "T",
        "navigatorClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/navigation/Navigator;",
        "(Ljava/lang/String;)Landroidx/navigation/Navigator;",
        "Companion",
        "navigation-common_release"
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
.field public static final Companion:Landroidx/navigation/NavigatorProvider$Companion;

.field private static final annotationNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _navigators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavigatorProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavigatorProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Landroidx/navigation/NavigatorProvider;->annotationNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAnnotationNames$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/navigation/NavigatorProvider;->annotationNames:Ljava/util/Map;

    return-object v0
.end method

.method public static final getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/navigation/Navigator<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 104
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider$Companion;->validateName$navigation_common_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/Navigator;

    .line 106
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    xor-int/2addr v1, v2

    const-string v3, "Navigator "

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p2}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    .line 115
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/Navigator;

    return-object p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is already attached to another NavController"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is replacing an already attached "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "navigator name cannot be an empty string"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "navigatorClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 48
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "*>;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    .line 65
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider$Companion;->validateName$navigation_common_release(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    .line 66
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/Navigator;

    if-eqz p0, :cond_0

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find Navigator with name \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\". You must call NavController.addNavigator() for each navigation type."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "navigator name cannot be an empty string"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNavigators()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    .line 32
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
