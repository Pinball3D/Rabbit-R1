.class public final Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilderKt;
.super Ljava/lang/Object;
.source "DialogFragmentNavigatorDestinationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFragmentNavigatorDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilderKt\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,143:1\n55#1,3:144\n58#1,4:148\n80#1,3:153\n83#1,4:157\n161#2:147\n161#2:152\n161#2:156\n161#2:161\n*S KotlinDebug\n*F\n+ 1 DialogFragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilderKt\n*L\n39#1:144,3\n39#1:148,4\n69#1:153,3\n69#1:157,4\n39#1:147\n57#1:152\n69#1:156\n82#1:161\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0087\u0008\u001a?\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0087\u0008\u00f8\u0001\u0000\u001a!\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0086\u0008\u001a=\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "dialog",
        "",
        "F",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroidx/navigation/NavGraphBuilder;",
        "id",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;",
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
.method public static final synthetic dialog(Landroidx/navigation/NavGraphBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/DialogFragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your DialogFragmentDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dialog<F>(route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    .line 146
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 147
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 148
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 145
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;ILkotlin/reflect/KClass;)V

    .line 150
    move-object p1, v0

    check-cast p1, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 144
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic dialog(Landroidx/navigation/NavGraphBuilder;ILkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/DialogFragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your DialogFragmentDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dialog<F>(route = id.toString()) { builder.invoke() }"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    .line 57
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 152
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 56
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;ILkotlin/reflect/KClass;)V

    .line 60
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/DialogFragment;",
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

    .line 154
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    .line 155
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 156
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 157
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 154
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 159
    move-object p1, v0

    check-cast p1, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 153
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/DialogFragment;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;",
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

    .line 81
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;

    .line 82
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 161
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    const/4 v2, 0x4

    const-string v3, "F"

    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/fragment/app/DialogFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 81
    invoke-direct {v0, v1, p1, v2}, Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 85
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 80
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method
