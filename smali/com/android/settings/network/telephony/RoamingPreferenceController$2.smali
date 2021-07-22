.class Lcom/android/settings/network/telephony/RoamingPreferenceController$2;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "RoamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/RoamingPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->access$100(Lcom/android/settings/network/telephony/RoamingPreferenceController;)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->access$000(Lcom/android/settings/network/telephony/RoamingPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
