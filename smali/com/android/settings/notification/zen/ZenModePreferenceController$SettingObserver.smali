.class Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/ZenModePreferenceController;

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 80
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 81
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 88
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/ZenModePreferenceController;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/ZenModePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
