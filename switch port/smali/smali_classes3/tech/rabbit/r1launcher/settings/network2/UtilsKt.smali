.class public final Ltech/rabbit/r1launcher/settings/network2/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ntech/rabbit/r1launcher/settings/network2/UtilsKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n329#2,4:215\n329#2,4:219\n177#2,2:223\n329#2,4:225\n329#2,4:229\n177#2,2:233\n1#3:235\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ntech/rabbit/r1launcher/settings/network2/UtilsKt\n*L\n20#1:215,4\n27#1:219,4\n28#1:223,2\n34#1:225,4\n41#1:229,4\n42#1:233,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001\u001a\u000e\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r\u001a\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\u001e\u0010\u0014\u001a\u0002H\u0015\"\n\u0008\u0000\u0010\u0015\u0018\u0001*\u00020\u0016*\u00020\u0017H\u0086\u0008\u00a2\u0006\u0002\u0010\u0018\u001a\n\u0010\u0019\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001c\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001d\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001e\u001a\u00020\u001a*\u00020\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "convertSecurityTypesToDpmWifiSecurity",
        "",
        "securityType",
        "getAllViews",
        "",
        "Landroid/view/View;",
        "view",
        "getDpmSecurityTypeUnknownConstant",
        "getDpmWifiSecurityText",
        "",
        "dpmWifiSecurity",
        "getSecurityTypeFromScanResult",
        "scanResult",
        "Landroid/net/wifi/ScanResult;",
        "getSecurityTypeFromWifiConfiguration",
        "configuration",
        "Landroid/net/wifi/WifiConfiguration;",
        "hasWepKeys",
        "",
        "isWpa3EnterpriseConfiguration",
        "toBinding",
        "V",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;",
        "toFocusedRadioButtonStyle",
        "",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "toFocusedToggleButtonStyle",
        "toUnfocusedRadioButtonStyle",
        "toUnfocusedToggleButtonStyle",
        "app_productionEnvRelease"
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
.method public static final convertSecurityTypesToDpmWifiSecurity(I)I
    .locals 6

    .line 185
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Landroid/net/wifi/WifiInfo;

    const-string v1, "convertSecurityTypeToDpmWifiSecurity"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 188
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 186
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 189
    const-class v1, Landroid/net/wifi/WifiInfo;

    new-array v2, v2, [Ljava/lang/Object;

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 186
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 185
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 192
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getDpmSecurityTypeUnknownConstant()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 192
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getAllViews(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 58
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 59
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 61
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 62
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v3}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getAllViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static final getDpmSecurityTypeUnknownConstant()I
    .locals 2

    .line 198
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Landroid/net/wifi/WifiInfo;

    const-string v1, "DPM_SECURITY_TYPE_UNKNOWN"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 199
    const-class v1, Landroid/net/wifi/WifiInfo;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 199
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getDpmWifiSecurityText(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "DPM_SECURITY_TYPE_UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "WIFI_SECURITY_ENTERPRISE_192"

    goto :goto_0

    :cond_1
    const-string p0, "WIFI_SECURITY_ENTERPRISE_EAP"

    goto :goto_0

    :cond_2
    const-string p0, "WIFI_SECURITY_PERSONAL"

    goto :goto_0

    :cond_3
    const-string p0, "WIFI_SECURITY_OPEN"

    :goto_0
    return-object p0
.end method

.method public static final getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I
    .locals 4

    const-string v0, "scanResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 178
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    move-result-object p0

    const-string v0, "getSecurityTypes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget v0, p0, v0

    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x1

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    aget v2, p0, v2

    if-ge v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static final getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_4

    .line 80
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v7, 0x5

    if-eqz v0, :cond_2

    move v2, v7

    goto/16 :goto_4

    .line 82
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move v2, v5

    goto/16 :goto_4

    .line 89
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_4

    .line 91
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 93
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Landroid/net/wifi/WifiConfiguration;

    const-string v2, "SECURITY_TYPE_OSEN"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 95
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 98
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 100
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 98
    :goto_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_4

    .line 102
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_e

    .line 103
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 106
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 107
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 114
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 116
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->hasWepKeys(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_b

    move v2, v4

    goto :goto_4

    :cond_b
    move v2, v3

    goto :goto_4

    .line 109
    :cond_c
    :goto_3
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->isWpa3EnterpriseConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x3

    .line 126
    :cond_e
    :goto_4
    :try_start_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class p0, Landroid/net/wifi/WifiInfo;

    const-string v0, "convertWifiConfigurationSecurityType"

    new-array v5, v4, [Ljava/lang/Class;

    .line 129
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 127
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    const-class v0, Landroid/net/wifi/WifiInfo;

    new-array v4, v4, [Ljava/lang/Object;

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 127
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 126
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 133
    :goto_5
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 p0, -0x1

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 133
    :goto_6
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final hasWepKeys(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 164
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 166
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static final isWpa3EnterpriseConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .line 140
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 147
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "requirePmf"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    .line 148
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 147
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 155
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v0, :cond_3

    return v2

    .line 156
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 158
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 159
    :cond_5
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static final synthetic toBinding(Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Landroidx/viewbinding/ViewBinding;",
            ">(",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "V"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/viewbinding/ViewBinding;

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 49
    const-class v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v3

    const-string v3, "inflate"

    .line 48
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method

.method public static final toFocusedRadioButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x24

    .line 34
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x6

    .line 35
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 37
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_focused_radio_button:I

    invoke-virtual {p0, v2, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 225
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toFocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x24

    .line 20
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x6

    .line 21
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v1

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 23
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_focused_toggle_button:I

    invoke-virtual {p0, v2, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toUnfocusedRadioButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x1d

    .line 41
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 44
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_unfocused_radio_button:I

    invoke-virtual {p0, v1, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toUnfocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x1d

    .line 27
    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 30
    sget v0, Ltech/rabbit/r1launcher/R$drawable;->selector_unfocused_toggle_button:I

    invoke-virtual {p0, v1, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 219
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
