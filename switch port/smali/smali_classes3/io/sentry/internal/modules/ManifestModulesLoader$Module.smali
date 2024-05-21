.class final Lio/sentry/internal/modules/ManifestModulesLoader$Module;
.super Ljava/lang/Object;
.source "ManifestModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/internal/modules/ManifestModulesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Module"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->version:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->version:Ljava/lang/String;

    return-object p0
.end method
