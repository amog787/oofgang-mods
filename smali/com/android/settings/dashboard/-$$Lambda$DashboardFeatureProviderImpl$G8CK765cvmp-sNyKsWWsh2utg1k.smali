.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$G8CK765cvmp-sNyKsWWsh2utg1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$G8CK765cvmp-sNyKsWWsh2utg1k;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$G8CK765cvmp-sNyKsWWsh2utg1k;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$G8CK765cvmp-sNyKsWWsh2utg1k;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$G8CK765cvmp-sNyKsWWsh2utg1k;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$3(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
