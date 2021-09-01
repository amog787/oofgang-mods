.class Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "PreferredNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->access$000(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    sget-boolean p1, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "PreferredNetworkMode"

    const-string v0, "mSubsidySettingsObserver#onChange"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->access$000(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
