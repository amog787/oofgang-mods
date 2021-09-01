.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$1500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
