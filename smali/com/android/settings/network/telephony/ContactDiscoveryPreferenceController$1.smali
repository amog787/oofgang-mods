.class Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ContactDiscoveryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->registerUceObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "ContactDiscoveryPref"

    const-string p2, "UCE setting changed, re-evaluating."

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;->this$0:Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->preference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
