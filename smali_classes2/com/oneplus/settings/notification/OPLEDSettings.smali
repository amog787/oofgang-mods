.class public Lcom/oneplus/settings/notification/OPLEDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPLEDSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mDialogColorPalette:[Ljava/lang/String;

.field private mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "#FF0000FF"

    const-string v1, "#FF40FFFF"

    const-string v2, "#FFFFAE00"

    const-string v3, "#FF40FF00"

    const-string v4, "#FFFF0000"

    const-string v5, "#FFFFFF00"

    const-string v6, "#FF9E00F9"

    const-string v7, "#FFEC407A"

    .line 102
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    return-void
.end method

.method private getDialogCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "#FF40FFFF"

    const-string v1, "#FF40FF00"

    const-string v2, "#FF0000FF"

    const-string v3, "#FFFFFF00"

    const-string v4, "#FFFF0000"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string p0, "#FFFF4000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string p0, "#FFFF00FF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string p0, "#FFFF0040"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_2

    :pswitch_0
    const-string v0, "#FFEC407A"

    goto :goto_2

    :pswitch_1
    const-string v0, "#FF9E00F9"

    goto :goto_2

    :pswitch_2
    move-object v0, v3

    goto :goto_2

    :pswitch_3
    move-object v0, v4

    goto :goto_2

    :pswitch_4
    move-object v0, v1

    goto :goto_2

    :pswitch_5
    const-string v0, "#FFFFAE00"

    goto :goto_2

    :pswitch_6
    move-object v0, v2

    :goto_2
    :pswitch_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x60ba255d -> :sswitch_7
        -0x60ba24e1 -> :sswitch_6
        -0x60ba229d -> :sswitch_5
        -0x60b853e1 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDriverCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "#FF40FFFF"

    const-string v1, "#FF40FF00"

    const-string v2, "#FF0000FF"

    const-string v3, "#FFFFFF00"

    const-string v4, "#FFFF0000"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string p0, "#FFFFAE00"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_6
    const-string p0, "#FFEC407A"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_7
    const-string p0, "#FF9E00F9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_2

    :pswitch_0
    const-string v0, "#FFFF0040"

    goto :goto_2

    :pswitch_1
    const-string v0, "#FFFF00FF"

    goto :goto_2

    :pswitch_2
    move-object v0, v3

    goto :goto_2

    :pswitch_3
    move-object v0, v4

    goto :goto_2

    :pswitch_4
    move-object v0, v1

    goto :goto_2

    :pswitch_5
    const-string v0, "#FFFF4000"

    goto :goto_2

    :pswitch_6
    move-object v0, v2

    :goto_2
    :pswitch_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76f73a3e -> :sswitch_7
        -0x62977219 -> :sswitch_6
        -0x60ba255d -> :sswitch_5
        -0x60b21c39 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    sget p1, Lcom/android/settings/R$xml;->op_led_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "led_settings_global_notification"

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v0, "#FF00FF00"

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "notification_light_pulse_color"

    .line 195
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "#%06X"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    sget v4, Lcom/android/settings/R$string;->color_picker_led_color_message:I

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    .line 202
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    .line 203
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "led_settings_battery_full"

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 206
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 210
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v4, "battery_light_full_color"

    .line 209
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    sget v2, Lcom/android/settings/R$string;->color_picker_led_color_message:I

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "led_settings_battery_charging"

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 220
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v2, "#FEFF0000"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "battery_light_medium_color"

    .line 223
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v4, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    sget v4, Lcom/android/settings/R$string;->color_picker_led_color_message:I

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "led_settings_battery_low"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 234
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v4, "battery_light_low_color"

    .line 237
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    sget v0, Lcom/android/settings/R$string;->color_picker_led_color_message:I

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    .line 244
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    .line 245
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 250
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 251
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDriverCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "led_settings_global_notification"

    .line 253
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "#FF00FF00"

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 256
    :goto_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "notification_light_pulse_color"

    .line 254
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v2, "led_settings_battery_full"

    .line 258
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_3

    move-object v3, p2

    .line 261
    :cond_3
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "battery_light_full_color"

    .line 259
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string v2, "led_settings_battery_charging"

    .line 263
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "#FEFF0000"

    if-eqz v2, :cond_6

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_5

    move-object v4, p2

    goto :goto_2

    :cond_5
    move-object v4, v3

    .line 266
    :goto_2
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "battery_light_medium_color"

    .line 264
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-string v2, "led_settings_battery_low"

    .line 268
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move-object p2, v3

    .line 271
    :goto_3
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string p2, "battery_light_low_color"

    .line 269
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 278
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->led_settings_battery_low_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 5%"

    const-string v2, " 15%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
