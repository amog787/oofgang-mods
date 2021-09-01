.class public Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;
.super Landroid/app/Activity;
.source "AutofillPickerTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-class p1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 59
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/autofill/AutofillPickerActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000000

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
