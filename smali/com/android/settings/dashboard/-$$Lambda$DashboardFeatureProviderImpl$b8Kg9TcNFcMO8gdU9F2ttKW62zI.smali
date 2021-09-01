.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$b8Kg9TcNFcMO8gdU9F2ttKW62zI;->f$2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$9$DashboardFeatureProviderImpl(Landroid/net/Uri;Landroidx/preference/Preference;)V

    return-void
.end method
