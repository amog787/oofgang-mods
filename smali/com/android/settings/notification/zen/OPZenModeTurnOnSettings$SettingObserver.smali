.class Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPZenModeTurnOnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_DURATION_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;Landroidx/preference/Preference;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->this$0:Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;

    .line 155
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 146
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 147
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_duration"

    .line 149
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 156
    iput-object p2, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 173
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->this$0:Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updatePolicy()V

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->this$0:Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenMode()V

    .line 179
    iget-object p1, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->this$0:Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;

    iget-object p0, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/zen/OPZenModeTurnOnSettings$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 166
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
