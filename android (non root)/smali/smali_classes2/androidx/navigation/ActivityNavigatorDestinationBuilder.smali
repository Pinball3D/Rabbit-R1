.class public final Landroidx/navigation/ActivityNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "ActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010%\u001a\u00020\u0002H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0012\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000fR\u001c\u0010\"\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\r\"\u0004\u0008$\u0010\u000f\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/navigation/ActivityNavigatorDestinationBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "navigator",
        "Landroidx/navigation/ActivityNavigator;",
        "id",
        "",
        "(Landroidx/navigation/ActivityNavigator;I)V",
        "route",
        "",
        "(Landroidx/navigation/ActivityNavigator;Ljava/lang/String;)V",
        "action",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "(Ljava/lang/String;)V",
        "activityClass",
        "Lkotlin/reflect/KClass;",
        "Landroid/app/Activity;",
        "getActivityClass",
        "()Lkotlin/reflect/KClass;",
        "setActivityClass",
        "(Lkotlin/reflect/KClass;)V",
        "context",
        "Landroid/content/Context;",
        "data",
        "Landroid/net/Uri;",
        "getData",
        "()Landroid/net/Uri;",
        "setData",
        "(Landroid/net/Uri;)V",
        "dataPattern",
        "getDataPattern",
        "setDataPattern",
        "targetPackage",
        "getTargetPackage",
        "setTargetPackage",
        "build",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private data:Landroid/net/Uri;

.field private dataPattern:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/ActivityNavigator;I)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your ActivityNavigatorDestinationBuilder instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ActivityNavigatorDestinationBuilder(navigator, route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 73
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/ActivityNavigator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 4

    .line 91
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lkotlin/reflect/KClass;

    if-eqz v1, :cond_0

    .line 94
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroidx/navigation/ActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    :cond_0
    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    .line 97
    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->build()Landroidx/navigation/ActivityNavigator$Destination;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    return-object p0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final getActivityClass()Lkotlin/reflect/KClass;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public final getData()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-object p0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-void
.end method

.method public final setActivityClass(Lkotlin/reflect/KClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lkotlin/reflect/KClass;

    return-void
.end method

.method public final setData(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-void
.end method

.method public final setDataPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-void
.end method
