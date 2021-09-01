.class Lcom/android/settings/network/telephony/Enabled5GPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "Enabled5GPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/Enabled5GPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/Enabled5GPreferenceController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    iget-object p1, p1, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const-string p1, "Enable5g"

    const-string p2, "DDS is changed"

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
