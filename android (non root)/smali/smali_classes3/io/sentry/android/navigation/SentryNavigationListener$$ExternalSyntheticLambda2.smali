.class public final synthetic Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic f$0:Lio/sentry/IScope;

.field public final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;->f$0:Lio/sentry/IScope;

    iput-object p2, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/ITransaction;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;->f$0:Lio/sentry/IScope;

    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ITransaction;

    invoke-static {v0, p0, p1}, Lio/sentry/android/navigation/SentryNavigationListener;->$r8$lambda$GKI1AQemXQ9tPVzv6EBx7Sj4YEw(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V

    return-void
.end method
