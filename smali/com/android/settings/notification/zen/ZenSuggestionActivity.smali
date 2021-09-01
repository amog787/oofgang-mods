.class public Lcom/android/settings/notification/zen/ZenSuggestionActivity;
.super Landroid/app/Activity;
.source "ZenSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
