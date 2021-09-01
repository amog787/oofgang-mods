.class Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->access$500(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    sget-boolean p1, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "EnabledNetworkMode"

    const-string v0, "mSubsidySettingsObserver#onChange"

    .line 178
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->access$500(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
