.class Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "PowerButtonEndsCallPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final INCALL_POWER_BUTTON_BEHAVIOR_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;->this$0:Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;

    .line 90
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "incall_power_button_behavior"

    .line 87
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;->INCALL_POWER_BUTTON_BEHAVIOR_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;->INCALL_POWER_BUTTON_BEHAVIOR_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;->this$0:Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController;->isChecked()Z

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/android/settings/accessibility/PowerButtonEndsCallPreferenceController$SettingObserver;->INCALL_POWER_BUTTON_BEHAVIOR_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
