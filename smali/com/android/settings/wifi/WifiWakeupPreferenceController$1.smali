.class Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWakeupPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
