.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 115
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 116
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 117
    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isAllowUserControl()Z

    move-result p2

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 121
    invoke-static {v3}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 123
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {v4, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const-string p2, "carrier_config"

    .line 129
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_3

    .line 131
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 132
    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "editable_wfc_mode_bool"

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v4, "editable_wfc_roaming_mode_bool"

    .line 136
    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_3
    move p2, v1

    move p1, v2

    .line 141
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "wifi_calling_mode"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v2

    .line 143
    :goto_4
    invoke-virtual {v4, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 146
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string/jumbo p2, "wifi_calling_roaming_mode"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_7

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 149
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    return-void
.end method
