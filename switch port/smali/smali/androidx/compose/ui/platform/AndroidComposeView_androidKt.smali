.class public final Landroidx/compose/ui/platform/AndroidComposeView_androidKt;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView_androidKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,2051:1\n42#2,2:2052\n42#2,2:2054\n42#2,2:2056\n42#2,2:2058\n42#2,2:2060\n42#2,2:2062\n42#2,2:2064\n42#2,2:2066\n42#2,2:2068\n42#2,2:2070\n42#2,2:2072\n42#2,2:2074\n42#2,2:2076\n42#2,2:2078\n42#2,2:2080\n42#2,2:2082\n39#2:2084\n39#2:2085\n39#2:2086\n39#2:2087\n*S KotlinDebug\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView_androidKt\n*L\n1940#1:2052,2\n1941#1:2054,2\n1942#1:2056,2\n1943#1:2058,2\n1944#1:2060,2\n1945#1:2062,2\n1946#1:2064,2\n1947#1:2066,2\n1948#1:2068,2\n1949#1:2070,2\n1950#1:2072,2\n1951#1:2074,2\n1952#1:2076,2\n1953#1:2078,2\n1954#1:2080,2\n1955#1:2082,2\n1960#1:2084\n1961#1:2085\n1962#1:2086\n1963#1:2087\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001a5\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\nH\u0002\u001a!\u0010\u0011\u001a\u00020\u0012*\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0008H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "localeLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroid/content/res/Configuration;",
        "getLocaleLayoutDirection",
        "(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;",
        "dot",
        "",
        "m1",
        "Landroidx/compose/ui/graphics/Matrix;",
        "row",
        "",
        "m2",
        "column",
        "dot-p89u6pk",
        "([FI[FI)F",
        "layoutDirectionFromInt",
        "layoutDirection",
        "preTransform",
        "",
        "other",
        "preTransform-JiSxe2E",
        "([F[F)V",
        "ui_release"
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
.method public static final synthetic access$layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$preTransform-JiSxe2E([F[F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTransform-JiSxe2E([F[F)V

    return-void
.end method

.method private static final dot-p89u6pk([FI[FI)F
    .locals 3

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    .line 2084
    aget v1, p0, p1

    aget v2, p2, p3

    mul-float/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    .line 2085
    aget v2, p0, v2

    add-int/2addr v0, p3

    aget v0, p2, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, p1, 0x2

    .line 2086
    aget v0, p0, v0

    const/16 v2, 0x8

    add-int/2addr v2, p3

    aget v2, p2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    add-int/lit8 p1, p1, 0x3

    .line 2087
    aget p0, p0, p1

    const/16 p1, 0xc

    add-int/2addr p1, p3

    aget p1, p2, p1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static final getLocaleLayoutDirection(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method private static final layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1867
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 1866
    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 1865
    :cond_1
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :goto_0
    return-object p0
.end method

.method private static final preTransform-JiSxe2E([F[F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1924
    invoke-static {v1, v2, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v3

    const/4 v4, 0x1

    .line 1925
    invoke-static {v1, v2, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v5

    const/4 v6, 0x2

    .line 1926
    invoke-static {v1, v2, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v7

    const/4 v8, 0x3

    .line 1927
    invoke-static {v1, v2, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v9

    .line 1928
    invoke-static {v1, v4, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v10

    .line 1929
    invoke-static {v1, v4, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v11

    .line 1930
    invoke-static {v1, v4, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v12

    .line 1931
    invoke-static {v1, v4, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v13

    .line 1932
    invoke-static {v1, v6, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v14

    .line 1933
    invoke-static {v1, v6, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v15

    .line 1934
    invoke-static {v1, v6, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v16

    .line 1935
    invoke-static {v1, v6, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v17

    .line 1936
    invoke-static {v1, v8, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v18

    .line 1937
    invoke-static {v1, v8, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v19

    .line 1938
    invoke-static {v1, v8, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v20

    .line 1939
    invoke-static {v1, v8, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v1

    .line 2052
    aput v3, v0, v2

    .line 2054
    aput v5, v0, v4

    .line 2056
    aput v7, v0, v6

    .line 2058
    aput v9, v0, v8

    const/4 v2, 0x4

    .line 2060
    aput v10, v0, v2

    const/4 v2, 0x5

    .line 2062
    aput v11, v0, v2

    const/4 v2, 0x6

    .line 2064
    aput v12, v0, v2

    const/4 v2, 0x7

    .line 2066
    aput v13, v0, v2

    const/16 v2, 0x8

    .line 2068
    aput v14, v0, v2

    const/16 v2, 0x9

    .line 2070
    aput v15, v0, v2

    const/16 v2, 0xa

    .line 2072
    aput v16, v0, v2

    const/16 v2, 0xb

    .line 2074
    aput v17, v0, v2

    const/16 v2, 0xc

    .line 2076
    aput v18, v0, v2

    const/16 v2, 0xd

    .line 2078
    aput v19, v0, v2

    const/16 v2, 0xe

    .line 2080
    aput v20, v0, v2

    const/16 v2, 0xf

    .line 2082
    aput v1, v0, v2

    return-void
.end method
