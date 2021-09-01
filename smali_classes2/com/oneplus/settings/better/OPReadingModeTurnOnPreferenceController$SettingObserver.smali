.class Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPReadingModeTurnOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final readingModeStatusUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    .line 161
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "reading_mode_status"

    .line 158
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 174
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 175
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$600(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string v0, "reading_mode_status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 177
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
