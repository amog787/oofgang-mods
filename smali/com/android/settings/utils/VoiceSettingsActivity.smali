.class public abstract Lcom/android/settings/utils/VoiceSettingsActivity;
.super Landroid/app/Activity;
.source "VoiceSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyFailure(Ljava/lang/CharSequence;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p0

    new-instance v0, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_0
    return-void
.end method

.method protected notifySuccess(Ljava/lang/CharSequence;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/VoiceSettingsActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/utils/VoiceSettingsActivity$1;-><init>(Lcom/android/settings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/VoiceSettingsActivity;->onVoiceSettingInteraction(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "VoiceSettingsActivity"

    const-string v0, "Cannot modify settings without voice interaction"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onVoiceSettingInteraction(Landroid/content/Intent;)Z
.end method
