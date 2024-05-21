.class public final Landroidx/collection/CollectionPlatformUtils;
.super Ljava/lang/Object;
.source "CollectionPlatformUtils.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005H\u0080\u0008\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/collection/CollectionPlatformUtils;",
        "",
        "()V",
        "createIndexOutOfBoundsException",
        "Ljava/lang/IndexOutOfBoundsException;",
        "Lkotlin/IndexOutOfBoundsException;",
        "createIndexOutOfBoundsException$collection",
        "collection"
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
.field public static final INSTANCE:Landroidx/collection/CollectionPlatformUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/collection/CollectionPlatformUtils;

    invoke-direct {v0}, Landroidx/collection/CollectionPlatformUtils;-><init>()V

    sput-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIndexOutOfBoundsException$collection()Ljava/lang/IndexOutOfBoundsException;
    .locals 0

    .line 26
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast p0, Ljava/lang/IndexOutOfBoundsException;

    return-object p0
.end method
