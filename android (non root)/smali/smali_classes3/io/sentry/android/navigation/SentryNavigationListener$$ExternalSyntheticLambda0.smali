.class public final synthetic Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ITransaction;

    invoke-static {p0, p1}, Lio/sentry/android/navigation/SentryNavigationListener;->$r8$lambda$pKKkiT6cRvX61QFGB_swSjnxj2Y(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    return-void
.end method
