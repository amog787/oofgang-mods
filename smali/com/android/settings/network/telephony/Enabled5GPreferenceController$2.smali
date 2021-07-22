.class Lcom/android/settings/network/telephony/Enabled5GPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "Enabled5GPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/Enabled5GPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/Enabled5GPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    iget-object p1, p1, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const-string p1, "Enable5g"

    const-string v0, "mPreferredNetworkModeObserver#onChange"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
