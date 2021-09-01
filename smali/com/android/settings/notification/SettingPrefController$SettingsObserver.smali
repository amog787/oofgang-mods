.class final Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SettingPrefController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SettingPrefController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-static {p0}, Lcom/android/settings/notification/SettingPrefController;->access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v0}, Lcom/android/settings/notification/SettingPrefController;->access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
