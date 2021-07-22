.class public final Lcom/google/android/setupcompat/internal/LayoutBindBackHelper;
.super Ljava/lang/Object;
.source "LayoutBindBackHelper.java"


# direct methods
.method public static final getExtraBundle(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 3

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/LayoutBindBackHelper;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "intentAction"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getScreenName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
