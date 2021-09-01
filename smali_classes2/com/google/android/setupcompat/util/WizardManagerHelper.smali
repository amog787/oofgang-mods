.class public final Lcom/google/android/setupcompat/util/WizardManagerHelper;
.super Ljava/lang/Object;
.source "WizardManagerHelper.java"


# static fields
.field static final EXTRA_ACTION_ID:Ljava/lang/String; = "actionId"

.field static final EXTRA_IS_DEFERRED_SETUP:Ljava/lang/String; = "deferredSetup"

.field public static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field static final EXTRA_IS_PRE_DEFERRED_SETUP:Ljava/lang/String; = "preDeferredSetup"

.field public static final EXTRA_IS_SETUP_FLOW:Ljava/lang/String; = "isSetupFlow"

.field static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"

.field static final EXTRA_WIZARD_BUNDLE:Ljava/lang/String; = "wizardBundle"


# direct methods
.method public static copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "wizardBundle"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "firstRun"

    const-string v1, "deferredSetup"

    const-string v2, "preDeferredSetup"

    const-string v3, "isSetupFlow"

    .line 103
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

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

    .line 108
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "theme"

    const-string v1, "scriptUri"

    const-string v2, "actionId"

    .line 111
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static isAnySetupWizard(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 211
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    const-string v1, "isSetupFlow"

    .line 212
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 214
    :cond_1
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isInitialSetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isPreDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static isDeferredSetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "deferredSetup"

    .line 174
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 5

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 156
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 160
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public static isInitialSetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "firstRun"

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPreDeferredSetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "preDeferredSetup"

    .line 186
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSetupWizardIntent(Landroid/content/Intent;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "firstRun"

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
