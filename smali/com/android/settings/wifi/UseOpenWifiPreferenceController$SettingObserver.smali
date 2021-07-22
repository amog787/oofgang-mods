.class Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "UseOpenWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 171
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "network_recommendations_enabled"

    .line 168
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->access$000(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    .line 188
    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->access$100(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 180
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
