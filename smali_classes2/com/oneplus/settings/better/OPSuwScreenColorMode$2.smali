.class Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;
.super Landroid/database/ContentObserver;
.source "OPSuwScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;Landroid/os/Handler;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 182
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "night_display_activated"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p2, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move v0, p2

    .line 185
    :cond_2
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$200(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$300(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 187
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$400(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 189
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$600(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$700(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 191
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$800(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 192
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$900(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/OPSuwPreferenceCategory;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 193
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 194
    iget-object p2, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p2

    if-eqz p2, :cond_6

    if-nez p1, :cond_3

    .line 196
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p1

    sget-object p2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v2, Lcom/android/settings/R$string;->oneplus_screen_color_mode_title_summary:I

    invoke-virtual {p2, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez v1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p1

    sget-object p2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v1, Lcom/android/settings/R$string;->oneplus_screen_color_mode_reading_mode_on_summary:I

    invoke-virtual {p2, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez v0, :cond_5

    .line 202
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_2
    return-void
.end method
