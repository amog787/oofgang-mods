.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputDefaultAppInfo"
.end annotation


# instance fields
.field public mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V
    .locals 7

    .line 144
    iget-object v4, p4, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->componentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 145
    iput-object p4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingIntent()Landroid/content/Intent;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    instance-of v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    return-object p0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    return-object p0
.end method
