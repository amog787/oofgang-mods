.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$1:Landroidx/preference/Preference;

    iput-boolean p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$1:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$JKORuxEpBEQe-n40LPrvmv-n2tI;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$8$DashboardFeatureProviderImpl(Landroidx/preference/Preference;Z)V

    return-void
.end method
