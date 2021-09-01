.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 146
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getGlifTheme(Landroid/content/Intent;)I
    .locals 14

    .line 46
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 50
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "glif_light"

    const-string v3, "glif_v3"

    const-string v4, "glif_v2"

    const-string v5, "glif"

    const-string v6, "glif_v3_light"

    const-string v7, "glif_v2_light"

    const/4 v8, -0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz p0, :cond_7

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v10

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v13

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v11

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v9

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v12

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v8

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v13, :cond_5

    if-eq v1, v12, :cond_4

    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v9, :cond_1

    goto/16 :goto_4

    .line 63
    :cond_1
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    .line 61
    :cond_2
    sget p0, Lcom/android/settings/R$style;->GlifTheme_Light:I

    return p0

    .line 59
    :cond_3
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme:I

    return p0

    .line 57
    :cond_4
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme_Light:I

    return p0

    .line 55
    :cond_5
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme:I

    return p0

    .line 53
    :cond_6
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme_Light:I

    return p0

    .line 66
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v10

    goto :goto_3

    :sswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v13

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v11

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v9

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v12

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_b

    if-eq v1, v13, :cond_b

    if-eq v1, v12, :cond_a

    if-eq v1, v11, :cond_a

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_9

    goto :goto_4

    .line 75
    :cond_9
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    .line 72
    :cond_a
    sget p0, Lcom/android/settings/R$style;->GlifV2Theme:I

    return p0

    .line 69
    :cond_b
    sget p0, Lcom/android/settings/R$style;->GlifV3Theme:I

    return p0

    .line 79
    :cond_c
    :goto_4
    sget p0, Lcom/android/settings/R$style;->GlifTheme:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_b
        -0x49f8f44f -> :sswitch_a
        0x3074c2 -> :sswitch_9
        0x6e4af19 -> :sswitch_8
        0x6e4af1a -> :sswitch_7
        0x2dc1f359 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1

    .line 118
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p0

    const-string v0, "SetupWizardUtils"

    if-eqz p0, :cond_0

    const-string p0, "Theme_Oneplus_SetupWizardTheme_Oxygen"

    .line 119
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget p0, Lcom/android/settings/R$style;->Theme_Oneplus_SetupWizardTheme_Oxygen:I

    return p0

    :cond_0
    const-string p0, "Theme_Oneplus_SetupWizardTheme_Hydrogen"

    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget p0, Lcom/android/settings/R$style;->Theme_Oneplus_SetupWizardTheme_Hydrogen:I

    return p0
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "theme"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 40
    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p0

    .line 130
    sget v0, Lcom/android/settings/R$style;->GlifV2Theme_Light_Transparent:I

    .line 131
    sget v1, Lcom/android/settings/R$style;->GlifV3Theme:I

    if-ne p0, v1, :cond_0

    .line 132
    sget v0, Lcom/android/settings/R$style;->GlifV3Theme_Transparent:I

    goto :goto_0

    .line 133
    :cond_0
    sget v1, Lcom/android/settings/R$style;->GlifV3Theme_Light:I

    if-ne p0, v1, :cond_1

    .line 134
    sget v0, Lcom/android/settings/R$style;->GlifV3Theme_Light_Transparent:I

    goto :goto_0

    .line 135
    :cond_1
    sget v1, Lcom/android/settings/R$style;->GlifV2Theme:I

    if-ne p0, v1, :cond_2

    .line 136
    sget v0, Lcom/android/settings/R$style;->GlifV2Theme_Transparent:I

    goto :goto_0

    .line 137
    :cond_2
    sget v1, Lcom/android/settings/R$style;->GlifTheme_Light:I

    if-ne p0, v1, :cond_3

    .line 138
    sget v0, Lcom/android/settings/R$style;->SetupWizardTheme_Light_Transparent:I

    goto :goto_0

    .line 139
    :cond_3
    sget v1, Lcom/android/settings/R$style;->GlifTheme:I

    if-ne p0, v1, :cond_4

    .line 140
    sget v0, Lcom/android/settings/R$style;->SetupWizardTheme_Transparent:I

    :cond_4
    :goto_0
    return v0
.end method
