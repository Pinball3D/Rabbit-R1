.class public final Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilderKt;
.super Ljava/lang/Object;
.source "FragmentNavigatorDestinationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNavigatorDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/fragment/FragmentNavigatorDestinationBuilderKt\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,142:1\n55#1,3:143\n58#1,4:147\n81#1,3:152\n84#1,4:156\n161#2:146\n161#2:151\n161#2:155\n161#2:160\n*S KotlinDebug\n*F\n+ 1 FragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/fragment/FragmentNavigatorDestinationBuilderKt\n*L\n39#1:143,3\n39#1:147,4\n70#1:152,3\n70#1:156,4\n39#1:146\n57#1:151\n70#1:155\n83#1:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0087\u0008\u001a?\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0087\u0008\u00f8\u0001\u0000\u001a!\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0086\u0008\u001a=\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "fragment",
        "",
        "F",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/navigation/NavGraphBuilder;",
        "id",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "route",
        "",
        "navigation-fragment_release"
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
.method public static final synthetic fragment(Landroidx/navigation/NavGraphBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your FragmentDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "fragment<F>(route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    .line 145
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/FragmentNavigator;

    .line 146
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/FragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 147
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 144
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/FragmentNavigator;ILkotlin/reflect/KClass;)V

    .line 149
    move-object p1, v0

    check-cast p1, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 143
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic fragment(Landroidx/navigation/NavGraphBuilder;ILkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your FragmentDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "fragment<F>(route = id.toString()) { builder.invoke() }"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    .line 57
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/FragmentNavigator;

    .line 151
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/FragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 56
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/FragmentNavigator;ILkotlin/reflect/KClass;)V

    .line 60
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic fragment(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    .line 154
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/FragmentNavigator;

    .line 155
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/FragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 156
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 153
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 158
    move-object p1, v0

    check-cast p1, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 152
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic fragment(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    .line 83
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/FragmentNavigator;

    .line 160
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/FragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 84
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 82
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 86
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 81
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method
